def login_user_feature(user)
  visit new_user_session_path
  within '#new_user' do
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
  end
  click_button 'Sign in'
  expect(page).to have_content 'Sign in successed'
end
