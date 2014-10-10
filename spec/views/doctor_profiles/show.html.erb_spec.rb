require 'rails_helper'

RSpec.describe "doctor_profiles/show", :type => :view do
  before(:each) do
    @doctor_profile = assign(:doctor_profile, DoctorProfile.create!(
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
      :npi => "Npi"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Schedule/)
    expect(rendered).to match(/Speciality/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Userid/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Orgid/)
    expect(rendered).to match(/Plan/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Npi/)
  end
end
