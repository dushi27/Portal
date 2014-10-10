require 'rails_helper'

RSpec.describe "practices/index", :type => :view do
  before(:each) do
    assign(:practices, [
      Practice.create!(
        :name => "Name",
        :speciality => "Speciality",
        :address_1 => "Address 1",
        :addres_2 => "Addres 2",
        :zip => "Zip",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :website => "Website"
      ),
      Practice.create!(
        :name => "Name",
        :speciality => "Speciality",
        :address_1 => "Address 1",
        :addres_2 => "Addres 2",
        :zip => "Zip",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :website => "Website"
      )
    ])
  end

  it "renders a list of practices" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Speciality".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Addres 2".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
