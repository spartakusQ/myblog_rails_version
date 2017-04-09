def sign_up

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Bob23'
  fill_in :user_password, :with => 'lalala@#'
  fill_in :user_password_confirmation, :with => 'lalala@#'

  click_button 'Sign up'

end
