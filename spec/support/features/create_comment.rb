module Features
  def create_comment(user_name,comment_body)
    title = "First article"
    body = "Lorem Khaled Ipsum is a major key to success.
                          You do know, you do know that
                          they don’t want you to have lunch. "

    create_article(title,body)
    click_link "First article"

    fill_in "User name", with: user_name
    fill_in "Body",      with: comment_body
    click_button("Submit")
  end
end
