require 'rails_helper'

RSpec.describe "PatientProfiles", :type => :request do
  describe "GET /patient_profiles" do
    it "works! (now write some real specs)" do
      get patient_profiles_path
      expect(response.status).to be(200)
    end
  end
end
