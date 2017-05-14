class FeedbackMailer < ApplicationMailer
  default from: "feedback@jmurphy.us"

  def seend_feedback(message)
    @feedback = message
    mail(to: 'jmrphyii@memphis.edu', subject: 'feedback')
  end
end
