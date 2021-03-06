class Mailer < ActionMailer::Base
  def feedback(message)
    @message = message
    mail :to => "feedback@railscasts.com", :from => @message.email, :subject => "RailsCasts Feedback from #{@message.name}"
  end
end
