require 'rails_helper'

feature "User creates article" do
  scenario "Successfully" do
    visit root_path
    click_link "Add a new article"

    fill_in "Title", with: "First article"
    fill_in "Body", with: "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "
    click_button "Submit"

    expect(page).to have_css 'h2', text: "First article"
  end
end
