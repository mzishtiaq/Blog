require 'rails_helper'

feature "User can delete article" do
  scenario "successfully" do
    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)
    click_link "First article"
    click_link "Delete article"

    expect(page).not_to have_css 'h2', text: title
  end
end
