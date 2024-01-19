class CategoryExpense < ApplicationRecord
  belongs_to :category
  belongs_to :expense

  validates :category, presence: true
  validates :expense, presence: true
end
