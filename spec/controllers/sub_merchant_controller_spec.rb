require 'rails_helper'

RSpec.describe SubMerchantController, :type => :controller do

  describe "submerchant get controller" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

end
