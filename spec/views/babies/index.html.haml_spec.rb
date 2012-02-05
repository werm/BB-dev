require 'spec_helper'

describe "babies/index" do
  before(:each) do
    assign(:babies, [
      stub_model(Baby,
        :name => "Name",
        :city => "City",
        :state => "State",
        :sex => "Sex",
        :mother => "Mother",
        :father => "Father",
        :birthday => "Birthday",
        :word => "Word",
        :walk => "Walk",
        :other => "Other"
      ),
      stub_model(Baby,
        :name => "Name",
        :city => "City",
        :state => "State",
        :sex => "Sex",
        :mother => "Mother",
        :father => "Father",
        :birthday => "Birthday",
        :word => "Word",
        :walk => "Walk",
        :other => "Other"
      )
    ])
  end

  it "renders a list of babies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Walk".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Other".to_s, :count => 2
  end
end
