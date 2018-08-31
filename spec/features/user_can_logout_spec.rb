require 'rails_helper'

RSpec.feature 'User logs out', type: :feature do
 scenario 'the user logs out' do
   sign_up_jackbert
   click_button 'Logout'
   expect(current_path).to eq('/login')
 end
end
