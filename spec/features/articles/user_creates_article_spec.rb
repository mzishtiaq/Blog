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
  context "When fields are empty" do
    scenario "Unsuccessfully" do
      create_article("","")

      expect(page).to have_content("Title can't be blank")
    end
  end
end
