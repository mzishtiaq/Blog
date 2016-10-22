module Features
  def subscribe(email)
    visit root_path
    click_link "Subscribe"

    fill_in "Email", with: email
    click_button "Submit"
  end
end
