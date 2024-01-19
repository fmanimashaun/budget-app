class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :destroy
  has_many :categories, through: :category_expenses

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validate :categories_not_select

  def categories_not_select
    return unless categories.any? { |category| category.name == 'Select at least one category' }

    errors.add(:categories, 'cannot contain "Select at least one category"')
  end
end
