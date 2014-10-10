require 'rails_helper'

RSpec.describe "patient_profiles/new", :type => :view do
  before(:each) do
    assign(:patient_profile, PatientProfile.new(
      :user_id => "MyString",
      :firstname => "MyString",
      :lastname => "Lastname",
      :pcprequest => "MyString",
      :profilepic => "MyText",
      :zipcode => "MyString",
      :docpref1 => 1,
      :docpref2 => 1,
      :doctpref3 => 1
    ))
  end

  it "renders new patient_profile form" do
    render

    assert_select "form[action=?][method=?]", patient_profiles_path, "post" do

      assert_select "input#patient_profile_user_id[name=?]", "patient_profile[user_id]"

      assert_select "input#patient_profile_firstname[name=?]", "patient_profile[firstname]"

      assert_select "input#patient_profile_lastname[name=?]", "patient_profile[lastname]"

      assert_select "input#patient_profile_pcprequest[name=?]", "patient_profile[pcprequest]"

      assert_select "textarea#patient_profile_profilepic[name=?]", "patient_profile[profilepic]"

      assert_select "input#patient_profile_zipcode[name=?]", "patient_profile[zipcode]"

      assert_select "input#patient_profile_docpref1[name=?]", "patient_profile[docpref1]"

      assert_select "input#patient_profile_docpref2[name=?]", "patient_profile[docpref2]"

      assert_select "input#patient_profile_doctpref3[name=?]", "patient_profile[doctpref3]"
    end
  end
end
