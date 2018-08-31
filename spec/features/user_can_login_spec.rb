# frozen_string_literal: true

require 'rails_helper'
require 'features/web_helper'

RSpec.feature 'User login', type: :feature do
  before(:each) { 
    visit('/')
    sign_in_flaubert
  }

  scenario 'user can login to existing account' do
    visit '/login'
    fill_in 'email', with: 'js@test.com'
    fill_in 'password', with: 'foobar'
    click_button 'Submit'
    expect(page).to have_content('Signed in as Jack')
  end
end
