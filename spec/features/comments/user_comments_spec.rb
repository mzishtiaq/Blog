require "rails_helper"

feature "User can leave comments" do
  scenario "successfully" do

    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)
    click_link "First article"

    fill_in "User name", with: "Zeeshan"
    fill_in "Body",      with: "You just try your best mate!"
    click_button("Submit")

    expect(page).to have_css "h3", text: "Zeeshan"
    expect(page).to have_content("You just try your best mate!")
    
  end
end
