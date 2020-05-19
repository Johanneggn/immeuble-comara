require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def hello
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'johanne.gueguen@gmail.com',
      :from => 'contact@location-comara.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end

end
