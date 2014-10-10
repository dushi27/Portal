require 'rails_helper'

RSpec.describe "doctor_profiles/index", :type => :view do
  before(:each) do
    assign(:doctor_profiles, [
      DoctorProfile.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :profilepic => "MyText",
        :schedule => "Schedule",
        :speciality => "Speciality",
        :title => "Title",
        :userid => "Userid",
        :zipcode => "Zipcode",
        :fee => "9.99",
        :orgid => "Orgid",
        :plan => "Plan",
        :plan => "Plan",
        :practice_id => 1,
        :npi => "Npi"
      ),
      DoctorProfile.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :profilepic => "MyText",
        :schedule => "Schedule",
        :speciality => "Speciality",
        :title => "Title",
        :userid => "Userid",
        :zipcode => "Zipcode",
        :fee => "9.99",
        :orgid => "Orgid",
        :plan => "Plan",
        :plan => "Plan",
        :practice_id => 1,
        :npi => "Npi"
      )
    ])
  end

  it "renders a list of doctor_profiles" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Schedule".to_s, :count => 2
    assert_select "tr>td", :text => "Speciality".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Userid".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Orgid".to_s, :count => 2
    assert_select "tr>td", :text => "Plan".to_s, :count => 2
    assert_select "tr>td", :text => "Plan".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Npi".to_s, :count => 2
  end
end
