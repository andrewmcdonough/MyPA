require 'spec_helper'

describe Event do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :start_at => Time.now,
      :end_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Event.create!(@valid_attributes)
  end
end
