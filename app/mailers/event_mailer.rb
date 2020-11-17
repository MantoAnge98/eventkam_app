class EventMailer < ApplicationMailer

  def sample_email(event)
    @event = event
    mail to: @event.user.email, subject: 'Sample Email'
  end

end
