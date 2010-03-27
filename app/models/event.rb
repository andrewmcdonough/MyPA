class Event < ActiveRecord::Base
  has_event_calendar

  before_save :default_end_date


  def default_end_date
    self.end_at = start_at + 1.hour
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

