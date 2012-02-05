require 'spec_helper'

describe "babies/new" do
  before(:each) do
    assign(:baby, stub_model(Baby,
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :sex => "MyString",
      :mother => "MyString",
      :father => "MyString",
      :birthday => "MyString",
      :word => "MyString",
      :walk => "MyString",
      :other => "MyString"
    ).as_new_record)
  end

  it "renders new baby form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => babies_path, :method => "post" do
      assert_select "input#baby_name", :name => "baby[name]"
      assert_select "input#baby_city", :name => "baby[city]"
      assert_select "input#baby_state", :name => "baby[state]"
      assert_select "input#baby_sex", :name => "baby[sex]"
      assert_select "input#baby_mother", :name => "baby[mother]"
      assert_select "input#baby_father", :name => "baby[father]"
      assert_select "input#baby_birthday", :name => "baby[birthday]"
      assert_select "input#baby_word", :name => "baby[word]"
      assert_select "input#baby_walk", :name => "baby[walk]"
      assert_select "input#baby_other", :name => "baby[other]"
    end
  end
end
