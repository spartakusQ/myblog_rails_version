require "spec_helper"

feature "Contact creation" do
  scenario "allows access to contact page" do
    visit '/contacts'

    expect(page).to have_content I18n.t ('contacts.contact_us')

  end
  #новый тест для страницы сонтакт и полей: email & message

  scenario "allow guest to create contact" do
    #посетить страницу contacts
    visit '/contacts'
    #заполнить поле email
    fill_in :contact_email, :with => 'user@example.com'
    #заполнить поле message
    fill_in :contact_message, :with => 'lalalala'
    #нажать на кнопку send message
    click_button 'Send message'
  end
end
