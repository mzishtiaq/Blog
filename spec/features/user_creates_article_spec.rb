require 'rails_helper'

feature "User creates article" do
  scenario "Successfully" do
    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)

    expect(page).to have_css 'h2', text: title
    
  end
end
