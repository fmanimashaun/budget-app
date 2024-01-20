require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  let(:user) { create(:user) }
  let!(:categories) { create_list(:category, 3, user: user) }

  before do
    driven_by(:rack_test)
    sign_in user
  end

  describe 'index view' do
    it 'displays all categories' do
      visit categories_path
      categories.each do |category|
        expect(page).to have_content(category.name)
      end
    end

    it 'displays all categories and navigates to the expenses page when clicked' do
      visit categories_path
      categories.each do |category|
        expect(page).to have_content(category.name)
        click_on category.name
        expect(page).to have_current_path(category_expenses_path(category))
        visit categories_path
      end
    end

    it 'displays a message when there are no categories' do
      Category.destroy_all
      visit categories_path
      expect(page).to have_content('There are no categories yet.')
    end
  end

  describe 'new view' do
    it 'creates a new category' do
      visit new_category_path
      fill_in 'Name', with: 'Test Category'
      attach_file('category[icon]', Rails.root + 'spec/support/assets/test-image.png')
      click_on 'Add'
      expect(page).to have_content('Category was successfully created.')
      expect(page).to have_content('Test Category')
    end
  end
end
