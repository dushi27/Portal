require 'rails_helper'

RSpec.describe "DoctorProfiles", :type => :request do
  describe "GET /doctor_profiles" do
    it "works! (now write some real specs)" do
      get doctor_profiles_path
      expect(response.status).to be(200)
    end
  end
end
