require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { build(:category) }

  it 'is valid with valid attributes' do
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'is not valid without an icon' do
    category.icon = nil
    expect(category).to_not be_valid
  end

  it 'has many category_expenses' do
    expect(Category.reflect_on_association(:category_expenses).macro).to eq(:has_many)
  end

  it 'has many expenses through category_expenses' do
    expect(Category.reflect_on_association(:expenses).macro).to eq(:has_many)
  end
end
