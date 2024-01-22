require 'rails_helper'

RSpec.describe 'Expense Index', type: :system do
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }
  let!(:expenses) { create_list(:expense, 3, user:, categories: [category]) }

  before do
    driven_by(:rack_test)
    sign_in user
    visit categories_path
    click_on category.name
  end

  it 'displays the category name and total transactions' do
    expect(page).to have_content(category.name)
  end

  it 'displays each expense' do
    expenses.each do |expense|
      expect(page).to have_content(expense.name)
      expect(page).to have_content(number_to_currency(expense.amount))
      expect(page).to have_content(expense.updated_at.strftime('%d %b %Y'))
    end
  end

  it 'displays a link to add a new transaction' do
    expect(page).to have_link('ADD TRANSACTION', href: new_category_expense_path(category))
  end
end
