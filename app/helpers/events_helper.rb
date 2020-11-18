module EventsHelper
  def joinable_event(user, event)
    if user == true && event.date_end >= Time.now
      1
    elsif user == 'Not registered' && event.date_end >= Time.now
      2
    elsif event.date_end < Time.now
      3
    else
      4
    end
  end

  def canceled_event(user, event)
    if user == true && event.date_end >= Time.now
      1
    elsif user == 'Not registered' && event.date_end >= Time.now
      2
    elsif event.date_end < Time.now
      3
    else
      4
    end
  end
end
