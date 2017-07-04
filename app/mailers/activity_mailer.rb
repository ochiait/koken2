class ActivityMailer < ApplicationMailer
  default from: 'notifications@example.com'

 def welcome_email
   @url  = 'http://example.com/login'
   mail(to: "abc@hogehoge.com", subject: 'Welcome to My Awesome Site')
 end
end
