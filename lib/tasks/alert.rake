namespace(:alerts) do
  task(:send_pending => [:environment]) do
    events = Event.with_pending_alerts
    if events.any?
      events.each do |event|
        if event.send_alert
          puts "Sending alert to #{event.user.mobile} at #{Time.now.strftime('%H:%M, %d/%m/%Y')}"
        else
          puts "Notification wasn't sent for #{event.name}"
        end
      end
    else
      puts "No notifications have been sent as of #{Time.now.strftime('%H:%M, %d/%m/%Y')}"
    end
  end
end
