require 'rails_helper'

RSpec.describe "practices/edit", :type => :view do
  before(:each) do
    @practice = assign(:practice, Practice.create!(
      :name => "MyString",
      :speciality => "MyString",
      :address_1 => "MyString",
      :addres_2 => "MyString",
      :zip => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit practice form" do
    render

    assert_select "form[action=?][method=?]", practice_path(@practice), "post" do

      assert_select "input#practice_name[name=?]", "practice[name]"

      assert_select "input#practice_speciality[name=?]", "practice[speciality]"

      assert_select "input#practice_address_1[name=?]", "practice[address_1]"

      assert_select "input#practice_addres_2[name=?]", "practice[addres_2]"

      assert_select "input#practice_zip[name=?]", "practice[zip]"

      assert_select "input#practice_phone[name=?]", "practice[phone]"

      assert_select "input#practice_fax[name=?]", "practice[fax]"

      assert_select "input#practice_email[name=?]", "practice[email]"

      assert_select "input#practice_website[name=?]", "practice[website]"
    end
  end
end
