# DEBUG TEST MAILER

class MyMailer < ActionMailer::Base
  def test_email
    mail(to: "d@example.org", from: "d@example.org", subject: "TEST", body: "yo", content_type: "text/plain" )
  end
end
