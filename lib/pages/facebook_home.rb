class FacebookHome
  include PageObject
  page_url 'http://www.facebook.com'

  text_field(:email, :name => 'email')
  text_field(:password, :name => 'pass')
  button(:login_button, name: 'login')

  def log_in_on_facebook user, pass
    self.email = user
    self.password = pass
    self.login_button
  end

end