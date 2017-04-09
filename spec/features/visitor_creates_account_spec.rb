require "spec_helper"

feature "Contact creation" do
  scenario "allows guest to contact page" do
    visit new_user_registration_path
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

def sign_up

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Bob23'
  fill_in :user_password, :with => 'lalala@#'
  fill_in :user_password_confirmation, :with => 'lalala@#'

  click_button 'Sign up'

end
