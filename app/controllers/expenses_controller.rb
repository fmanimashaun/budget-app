class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @expenses = @category.expenses.order(created_at: :desc)
  end

  def new
    @expense = Expense.new
    @categories = current_user.categories.all
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
    if @expense.save
      redirect_to categories_path
    else
      render :new
    end
  end


  private

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end
end
