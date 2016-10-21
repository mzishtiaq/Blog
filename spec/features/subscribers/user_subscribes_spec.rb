require 'rails_helper'

feature "User can subscribe" do
  scenario "successfully" do
    visit root_path
    click_link "Subscribe"

    fill_in "Email", with: "example@example.com"
    click_button "Submit"

    expect(page).to have_content("Thank you for subscribing")
  end
end
