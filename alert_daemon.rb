#/usr/bin/ruby
#

while (true) do
  puts "Running send alerts"
  `rake alerts:send_all`
  sleep 60
end
