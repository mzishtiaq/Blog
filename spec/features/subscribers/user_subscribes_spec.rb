require 'rails_helper'

feature "User can subscribe" do
  scenario "successfully" do
    email = "example@example.com"

    subscribe(email)

    expect(page).to have_content("Thank you for subscribing")
  end

  context "When email's format is wrong" do
    scenario "unsucessfully" do
      email = "example@example"

      subscribe(email)

      expect(page).to have_content("You couldn't subscribe, please make sure your email is correct")
    end
  end
end
