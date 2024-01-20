require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }
  let(:expense) { create(:expense, user:) }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'assigns @category' do
      get category_expenses_path(category), params: { category_id: category.id }
      expect(assigns(:category)).to eq(category)
    end

    it 'assigns @expenses' do
      create(:category_expense, category:, expense:)
      get category_expenses_path(category), params: { category_id: category.id }
      expect(assigns(:expenses)).to match_array(category.expenses)
    end
  end

  describe 'GET #new' do
    let!(:category1) { create(:category, user:) }
    let!(:category2) { create(:category, user:) }

    it 'assigns a new Expense to @expense' do
      get new_category_expense_path(category1)
      expect(assigns(:expense)).to be_a_new(Expense)
    end

    it 'assigns @categories' do
      get new_category_expense_path(category1)
      expect(assigns(:categories)).to match_array([category1, category2])
    end
  end

  describe 'POST #create' do
    let!(:category1) { create(:category, user:) }
    let!(:category2) { create(:category, user:) }

    context 'with valid attributes' do
      it 'creates a new expense' do
        expect do
          post category_expenses_path(category1),
               params: { expense: attributes_for(:expense, category_ids: [category1.id, category2.id]) }
        end.to change(Expense, :count).by(1)
      end

      it 'redirects to the categories index' do
        post category_expenses_path(category1),
             params: { expense: attributes_for(:expense, category_ids: [category1.id, category2.id]) }
        expect(response).to redirect_to categories_path
      end
    end

    context 'with invalid attributes' do
      it 'does not save the new expense' do
        expect do
          post category_expenses_path(category1),
               params: { expense: attributes_for(:expense, name: nil, category_ids: [category1.id, category2.id]) }
        end.not_to change(Expense, :count)
      end

      it 're-renders the new method' do
        post category_expenses_path(category1),
             params: { expense: attributes_for(:expense, name: nil, category_ids: [category1.id, category2.id]) }
        expect(response).to render_template :new
      end
    end
  end
end
