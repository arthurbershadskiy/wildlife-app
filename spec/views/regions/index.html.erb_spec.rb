require 'spec_helper'

describe "regions/index" do
  before(:each) do
    assign(:regions, [
      stub_model(Region,
        :name => "",
        :sighting_id => 1
      ),
      stub_model(Region,
        :name => "",
        :sighting_id => 1
      )
    ])
  end

  it "renders a list of regions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
