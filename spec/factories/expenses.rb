FactoryBot.define do
  factory :expense do
    association :user
    name { Faker::Lorem.word }
    amount { Faker::Number.decimal(l_digits: 2) }

    after(:create) do |expense, evaluator|
      unless evaluator.skip_create_category_expenses
        create_list(:category_expense, 3, expense:,
                                          category: create(:category, skip_create_category_expenses: true))
      end
    end

    transient do
      skip_create_category_expenses { false }
    end
  end
end
