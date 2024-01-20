require 'faker'

FactoryBot.define do
  factory :category do
    association :user
    name { Faker::Lorem.word }
    icon { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'test-image.jpg'), 'image/jpeg') }

    after(:create) do |category|
      create_list(:category_expense, 3, category: category)
    end
  end
end
