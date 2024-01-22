class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = current_user.categories.find(params[:category_id])
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
      flash[:notice] = 'Expense was successfully created.'
      redirect_to categories_path
    else
      @categories = current_user.categories.all
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end
end
