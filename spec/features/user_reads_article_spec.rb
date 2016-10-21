require 'rails_helper'

feature "User can read the article body" do
  scenario "successfully" do
    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)
    click_link "First article"

    expect(page).to have_css "h2", text: title
    expect(page).to have_content(body)
  end
end
