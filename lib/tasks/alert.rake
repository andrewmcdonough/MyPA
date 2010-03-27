namespace(:alerts) do
  task(:send_pending => [:environment]) do
    events = Event.with_pending_alerts
    if events.any?
      events.each do |event|
        event.send_alert
      end
    else
      puts "No notifications have been sent."
    end
  end
end
