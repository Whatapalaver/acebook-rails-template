def sign_up_jackbert
  visit '/users/sign_up'
  fill_in 'First name', with: 'Jack'
  fill_in 'Last name', with: 'Sparrow'
  fill_in 'Email', with: 'js@test.com'
  fill_in 'user_password', with: 'foobar'
  fill_in 'user_password_confirmation', with: 'foobar'
  click_button 'Sign up'
end

def sign_in_and_post
  sign_up_jackbert
  visit new_post_path
  attach_file('post[postimage]', "./files/images/caffeine-coffee-cup-6347.jpg")
  fill_in 'post[message]', with: 'Hello, world!'
  click_button 'Create Post'
  click_link 'Home'
  fill_in 'comment_body', with: 'This is a comment'
  click_button 'Save'
end