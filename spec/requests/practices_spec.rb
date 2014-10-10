require 'rails_helper'

RSpec.describe "Practices", :type => :request do
  describe "GET /practices" do
    it "get the practice" do
      get practices_path
      expect(response.status).to be(200)
    end
  end
  
  describe "POST /practices" do
    it "get the new practice path" do
      get new_practice_path
      expect(response.status).to be(200)
    end
  end  
    
end
