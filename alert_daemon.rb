#/usr/bin/ruby
#

while (true) do
  puts "Running send alerts"
  `rake alerts:send_pending`
  sleep 60
end
