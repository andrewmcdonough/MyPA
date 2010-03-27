require 'spec_helper'

describe "/events/index.html.erb" do
  include EventsHelper

  before(:each) do
    assigns[:events] = [
      stub_model(Event,
        :name => "value for name"
      ),
      stub_model(Event,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of events" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
