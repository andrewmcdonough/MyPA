namespace(:alerts) do
  task(:send_all => [:environment]) do
    Event.with_pending_alerts.each do |event|
      event.send_alert
    end
  end
end
