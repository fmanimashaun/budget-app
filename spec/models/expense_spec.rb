require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:expense) { build(:expense) }

  it 'is valid with valid attributes' do
    expect(expense).to be_valid
  end

  it 'is not valid without a name' do
    expense.name = nil
    expect(expense).to_not be_valid
  end

  it 'is not valid without an amount' do
    expense.amount = nil
    expect(expense).to_not be_valid
  end

  it 'is not valid with a non-positive amount' do
    expense.amount = -1
    expect(expense).to_not be_valid
  end

  it 'has many category_expenses' do
    expect(Expense.reflect_on_association(:category_expenses).macro).to eq(:has_many)
  end

  it 'has many categories through category_expenses' do
    expect(Expense.reflect_on_association(:categories).macro).to eq(:has_many)
  end
end
