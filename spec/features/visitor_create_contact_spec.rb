require "spec_helper"

feature "Contact creation" do
  scenario "allows access to contact page" do
    visit '/contacts'

    expect(page).to have_content I18n.t ('contacts.contact_us')

  end
  scenario "allow guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'lalalala'
    click_button 'Send message'
  end
end
