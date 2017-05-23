class FeedbackMailer < ApplicationMailer
  default from: "jcmurphy1267@gmail.com"

  def send_feedback(message)
    @feedback = message
    mail(to: 'jcmurphy1267@gmail.com', subject: 'feedback')
  end
end
