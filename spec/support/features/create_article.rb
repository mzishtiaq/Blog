module Features
  def create_article(title,body)
    visit root_path

    click_link 'Add a new article'
    fill_in 'Title', with: title
    fill_in 'Body', with: body
    click_button 'Submit'
  end
end
