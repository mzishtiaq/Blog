require 'rails_helper'

feature "User can edit article" do
  scenario "successfully" do
    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)
    click_link "First article"
    click_link "Edit article"

    fill_in "Title", with: "Second article"
    fill_in "Body", with: "Editing this article's title and body"
    click_button "Submit"

    expect(page).to have_css "h2", text: "Second article"
    expect(page).to have_content("Editing this article's title and body")

    expect(page).not_to have_css "h2", text: title
    expect(page).not_to have_content(body)
  end
end
