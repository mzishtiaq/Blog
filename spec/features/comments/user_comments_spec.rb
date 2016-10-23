require "rails_helper"

feature "User can leave comments" do
  scenario "successfully" do
    user_name = "Zeeshan"
    comment_body = "You just try your best mate!"

    create_comment(user_name,comment_body)

    expect(page).to have_css "h4", text: "Zeeshan"
    expect(page).to have_content("You just try your best mate!")
  end

  context "when user name is empty" do
    scenario "Unsuccessfully" do
      create_comment("","")

      expect(page).to have_content("Your comment couldn't be added, please make sure that user name isn't empty")
    end
  end
end
