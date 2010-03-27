#/usr/bin/ruby
#

puts "Notification daemon started."
while (true) do
  `rake alerts:send_pending --trace`
  sleep 60
end
