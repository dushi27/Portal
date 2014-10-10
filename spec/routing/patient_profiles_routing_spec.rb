require "rails_helper"

RSpec.describe PatientProfilesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patient_profiles").to route_to("patient_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/patient_profiles/new").to route_to("patient_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/patient_profiles/1").to route_to("patient_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patient_profiles/1/edit").to route_to("patient_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patient_profiles").to route_to("patient_profiles#create")
    end

    it "routes to #update" do
      expect(:put => "/patient_profiles/1").to route_to("patient_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_profiles/1").to route_to("patient_profiles#destroy", :id => "1")
    end

  end
end
