require 'rails_helper'

RSpec.describe SubMerchantController, :type => :controller do

  describe "GET get" do
    it "returns http success" do
      get :get
      expect(response).to be_success
    end
  end

  describe "GET create_submerchant" do
    it "returns http success" do
      get :create_submerchant
      expect(response).to be_success
    end
  end

end
