FactoryBot.define do
  factory :category do
    association :user
    name { Faker::Lorem.word }
    icon { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'assets', 'test-image.png'), 'image/png') }

    after(:create) do |category, evaluator|
      unless evaluator.skip_create_category_expenses
        create_list(:category_expense, 3, category: category)
      end
    end

    transient do
      skip_create_category_expenses { false }
    end
  end
end
