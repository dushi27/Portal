require 'rails_helper'

RSpec.describe "patient_profiles/index", :type => :view do
  before(:each) do
    assign(:patient_profiles, [
      PatientProfile.create!(
        :user_id => "User",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :pcprequest => "Pcprequest",
        :profilepic => "MyText",
        :zipcode => "Zipcode",
        :docpref1 => 1,
        :docpref2 => 2,
        :doctpref3 => 3
      ),
      PatientProfile.create!(
        :user_id => "User",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :pcprequest => "Pcprequest",
        :profilepic => "MyText",
        :zipcode => "Zipcode",
        :docpref1 => 1,
        :docpref2 => 2,
        :doctpref3 => 3
      )
    ])
  end

  it "renders a list of patient_profiles" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Pcprequest".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
