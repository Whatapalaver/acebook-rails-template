# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do

  scenario 'Standard User can edit own comments' do
    standard_user = create(:user)
    login_as standard_user
    newpost = Post.create(message: 'Console test', user_id: standard_user.id)
    visit ('/posts')  
    click_link 'Edit Post'
    click_link 'Edit comment'
    expect(page).to have_content('Editing Comment')
    
  end

  scenario 'Standard User cannot edit other peoples comments' do
    standard_user = create(:user)
    other_user = create(:user)
    login_as standard_user
    otherpost = Post.create(message: 'Console test', user_id: other_user.id)
    visit ('/posts')  
    expect(page).not_to have_content('Edit Comment')
    
  end

  scenario 'Superuser can edit someone else post' do
    # login_as create( :user ), scope: :user
    # sign_out :user
    # visit new_post_path
    # expect(page).to have_content("You need to sign in or sign up before continuing.")
  end
end