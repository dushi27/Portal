require 'rails_helper'

RSpec.describe "doctor_profiles/edit", :type => :view do
  before(:each) do
    @doctor_profile = assign(:doctor_profile, DoctorProfile.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :profilepic => "MyText",
      :schedule => "MyString",
      :speciality => "MyString",
      :title => "MyString",
      :userid => "MyString",
      :zipcode => "MyString",
      :fee => "9.99",
      :orgid => "MyString",
      :plan => "MyString",
      :npi => "MyString"
    ))
  end

  it "renders the edit doctor_profile form" do
    render

      assert_select "form[action=?][method=?]", doctor_profiles_path(@doctor_profile), "post" do

      assert_select "input#doctor_profile_firstname[name=?]", "doctor_profile[firstname]"

      assert_select "input#doctor_profile_lastname[name=?]", "doctor_profile[lastname]"

      assert_select "textarea#doctor_profile_profilepic[name=?]", "doctor_profile[profilepic]"

      assert_select "input#doctor_profile_schedule[name=?]", "doctor_profile[schedule]"

      assert_select "input#doctor_profile_speciality[name=?]", "doctor_profile[speciality]"

      assert_select "input#doctor_profile_title[name=?]", "doctor_profile[title]"

      assert_select "input#doctor_profile_userid[name=?]", "doctor_profile[userid]"

      assert_select "input#doctor_profile_zipcode[name=?]", "doctor_profile[zipcode]"

      assert_select "input#doctor_profile_fee[name!=?]", "doctor_profile[fee]"

      assert_select "input#doctor_profile_orgid[name=?]", "doctor_profile[orgid]"

      assert_select "input#doctor_profile_plan[name=?]", "doctor_profile[plan]"

      assert_select "input#doctor_profile_npi[name=?]", "doctor_profile[npi]"
    end
  end
end
