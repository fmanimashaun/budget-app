require 'faker'

FactoryBot.define do
  factory :expense do
    association :user
    name { Faker::Lorem.word }
    amount { Faker::Number.decimal(l_digits: 2) }

    after(:create) do |expense|
      create_list(:category_expense, 3, expense: expense)
    end
  end
end
