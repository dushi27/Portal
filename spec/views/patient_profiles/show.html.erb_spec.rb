require 'rails_helper'

RSpec.describe "patient_profiles/show", :type => :view do
  before(:each) do
    @patient_profile = assign(:patient_profile, PatientProfile.create!(
      :user_id => "User",
      :firstname => "Firstname",
      :lastname => "Lastname",
      :pcprequest => "Pcprequest",
      :profilepic => "MyText",
      :zipcode => "Zipcode",
      :docpref1 => 1,
      :docpref2 => 2,
      :doctpref3 => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Pcprequest/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
