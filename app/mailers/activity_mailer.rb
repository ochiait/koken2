class ActivityMailer < ApplicationMailer
  default from: 'notifications@example.com'

 def welcome_email
   @url  = 'http://example.com/login'
   mail(to: "abc@hogehoge.com", subject: 'Welcome to My Awesome Site')
 end

 def activity_email(family, activity)
   # @title = post.title
   mail to: family.email, subject: "活動報告いたします"
 end
end