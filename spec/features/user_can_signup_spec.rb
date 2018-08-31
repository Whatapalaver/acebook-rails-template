require 'rails_helper'

RSpec.feature 'User Signup', type: :feature do
  before(:each) { visit('/signup') }

  scenario 'user can create a new user account' do
    # sign_up_jackbert
    # click_button 'Logout'
    # user = nil
    fill_in 'user_first_name', with: 'Jack'
    fill_in 'user_last_name', with: 'Sparrow'
    fill_in 'user_email', with: 'js@test.com'
    fill_in 'user_password', with: 'foobar'
    fill_in 'user_password_confirmation', with: 'foobar'
    click_button 'Submit'
    expect(current_path).to eq('/home')
  end

end
