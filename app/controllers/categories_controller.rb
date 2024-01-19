class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.where(user: current_user)
    @total_spent = @categories.sum { |category| category.expenses.sum(:amount) }
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
