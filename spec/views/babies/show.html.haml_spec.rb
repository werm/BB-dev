require 'spec_helper'

describe "babies/show" do
  before(:each) do
    @baby = assign(:baby, stub_model(Baby,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Birthday/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Word/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Walk/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Other/)
  end
end
