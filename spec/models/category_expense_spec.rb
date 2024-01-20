require 'rails_helper'

RSpec.describe CategoryExpense, type: :model do
  let(:category_expense) { build(:category_expense) }

  it 'is valid with valid attributes' do
    expect(category_expense).to be_valid
  end

  it 'is not valid without a category' do
    category_expense.category = nil
    expect(category_expense).to_not be_valid
  end

  it 'is not valid without an expense' do
    category_expense.expense = nil
    expect(category_expense).to_not be_valid
  end

  it 'belongs to category' do
    expect(CategoryExpense.reflect_on_association(:category).macro).to eq(:belongs_to)
  end

  it 'belongs to expense' do
    expect(CategoryExpense.reflect_on_association(:expense).macro).to eq(:belongs_to)
  end
end
