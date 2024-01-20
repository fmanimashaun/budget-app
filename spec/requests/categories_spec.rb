require 'rails_helper'

RSpec.describe CategoriesController, type: :request do
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'assigns @categories' do
      category
      get categories_path
      expect(assigns(:categories)).to eq([category])
    end

    it 'calculates @total_spent' do
      expense = create(:expense, user:)
      create(:category_expense, category:, expense:)
      total_spent = category.expenses.sum(:amount)
      get categories_path
      expect(assigns(:total_spent)).to eq(total_spent)
    end
  end

  describe 'GET #new' do
    it 'assigns a new Category to @category' do
      get new_category_path
      expect(assigns(:category)).to be_a_new(Category)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates a new category' do
        expect do
          post categories_path, params: { category: attributes_for(:category) }
        end.to change(Category, :count).by(1)
      end

      it 'redirects to the categories index' do
        post categories_path, params: { category: attributes_for(:category) }
        expect(response).to redirect_to categories_path
      end
    end

    context 'with invalid attributes' do
      it 'does not save the new category' do
        expect do
          post categories_path, params: { category: attributes_for(:category, name: nil) }
        end.not_to change(Category, :count)
      end

      it 're-renders the new method' do
        post categories_path, params: { category: attributes_for(:category, name: nil) }
        expect(response).to render_template :new
      end
    end
  end
end
