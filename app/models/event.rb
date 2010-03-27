require 'clickatell'
class Event < ActiveRecord::Base
  has_event_calendar

  before_save :set_defaults
  belongs_to :user 

  named_scope :with_pending_alerts, :conditions => ["start_at < ? AND ISNULL(sent) ", Time.now - 1.day]

  def default_end_date
    self.end_at = start_at + 1.hour
  end
  
  def set_defaults
    default_end_date
    # self.user = current_user
  end

  def send_alert
    puts "send alert"
    mobile_to = self.user.mobile
    api = Clickatell::API.authenticate('3228297', 'andrewmcdonough', 'Myp1q2w')
    mark_as_sent if api.send_message(mobile_to, self.message)
  end

  def mark_as_sent
    puts  "marking"
    self.sent = Time.now
    self.save
  end

  def short_name
    name[0..30]
  end
 
  def nice_day
    return "Today" if Time.now.day == start_at.day 
    return "Tomorrow" if (Time.now.day == (start_at.day + 1))
    return start_at.strftime("%d/%m/%y")
  end 

  def nice_time
    start_at.strftime("%H:%M") 
  end

  def message
    "Hi, the event #{short_name} is happening #{nice_day} at #{nice_time}. Greetings, #{APPLICATION_NAME}"
  end

end


# == Schema Information
#
# Table name: events
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime
#  updated_at :datetime
#

