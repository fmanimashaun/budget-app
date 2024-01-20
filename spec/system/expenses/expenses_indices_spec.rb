require 'rails_helper'

RSpec.describe 'Expenses', type: :system do
  let(:user) { create(:user) }
  let(:category) { create(:category, user: user) }
  let!(:expenses) { create_list(:expense, 3, category: category, user: user) }

  before do
    driven_by(:rack_test)
    sign_in user
  end

  describe 'index view' do
    it 'displays all expenses for the category' do
      visit category_expenses_path(category)
      expenses.each do |expense|
        expect(page).to have_content(expense.name)
        expect(page).to have_content(number_to_currency(expense.amount))
        expect(page).to have_content(expense.created_at.strftime('%d %b %Y'))
      end
    end

    it 'displays a message when there are no expenses' do
      Expense.destroy_all
      visit category_expenses_path(category)
      expect(page).to have_content('No transactions yet')
    end
  end

  describe 'new view' do
    it 'creates a new expense with a category and redirects to categories path' do
      visit category_expenses_path(category)
      click_on 'ADD TRANSACTION'
      fill_in 'Name', with: 'Test Expense'
      fill_in 'Amount', with: 50.00
      select category.name, from: 'category_ids[]'
      click_on 'Add'
      expect(page).to have_content('Expense was successfully created.')
      expect(page).to have_current_path(categories_path)
    end
  end
end
