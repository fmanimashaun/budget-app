require 'rails_helper'

RSpec.describe 'home/index.html.erb', type: :view do
  it 'displays the logo and sign in/sign up links' do
    render

    assert_select 'img[src=?]', ActionController::Base.helpers.asset_path('logo.png')
    assert_select 'a[href=?]', new_user_session_path, text: 'SIGN IN'
    assert_select 'a[href=?]', new_user_registration_path, text: 'SIGN UP'
  end
end
