require 'spec_helper'

describe "regions/new" do
  before(:each) do
    assign(:region, stub_model(Region,
      :name => "",
      :sighting_id => 1
    ).as_new_record)
  end

  it "renders new region form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", regions_path, "post" do
      assert_select "input#region_name[name=?]", "region[name]"
      assert_select "input#region_sighting_id[name=?]", "region[sighting_id]"
    end
  end
end
