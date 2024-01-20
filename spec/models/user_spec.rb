require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'has many categories' do
    expect(User.reflect_on_association(:categories).macro).to eq(:has_many)
  end

  it 'has many expenses' do
    expect(User.reflect_on_association(:expenses).macro).to eq(:has_many)
  end
end
