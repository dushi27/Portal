require 'rails_helper'

RSpec.describe "practices/show", :type => :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :name => "Name",
      :speciality => "Speciality",
      :address_1 => "Address 1",
      :addres_2 => "Addres 2",
      :zip => "Zip",
      :phone => "Phone",
      :fax => "Fax",
      :email => "Email",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Speciality/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Addres 2/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
  end
end
