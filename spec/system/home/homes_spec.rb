require 'rails_helper'

RSpec.describe "Home", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "displays the logo and sign in/sign up links" do
    visit root_path

    expect(page).to have_css("img[src*='#{ActionController::Base.helpers.asset_path('logo.png')}']")
    expect(page).to have_link('SIGN IN', href: new_user_session_path)
    expect(page).to have_link('SIGN UP', href: new_user_registration_path)
  end

  it "navigates to the sign in page when the SIGN IN link is clicked" do
    visit root_path
    click_link 'SIGN IN'
    expect(page).to have_current_path(new_user_session_path)
  end

  it "navigates to the sign up page when the SIGN UP link is clicked" do
    visit root_path
    click_link 'SIGN UP'
    expect(page).to have_current_path(new_user_registration_path)
  end
end
