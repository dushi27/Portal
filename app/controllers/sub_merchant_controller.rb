class SubMerchantController < ApplicationController
  before_filter :init_braintree
  
  def new
  end

  def create_submerchant
    result = Braintree::MerchantAccount.create(
        :individual => {
          :first_name =>  "#{params[:first_name]}",
          :last_name =>  "#{params[:last_name]}",
          :email => "#{params[:email]}",
          :date_of_birth => "#{params[:dob]}",
          :address => {
            :street_address => "#{params[:street]}",
            :locality => "#{params[:city]}",
            :region => "#{params[:state]}",
            :postal_code => "#{params[:zip]}"
          }
        },
        :business => {
          :legal_name => "#{params[:legal_name]}",
          :dba_name => "#{params[:dba]}",
          :tax_id => "#{params[:tax_id]}"          
        },
        :funding => {
          :destination => "bank",
          :account_number => "#{params[:acctno]}",
          :routing_number => "#{params[:routing]}"
        },
        :tos_accepted => "#{params[:tos]}",
        :master_merchant_account_id => "rgw233jmnzhxz3fs",  
        :id => "#{params[:id]}"
      )
    
    respond_to do |format|
      if result.success?
        format.html { redirect_to sub_merchant_new_path, notice: "#{result.merchant_account.id} is #{result.merchant_account.status}" }
      else
        error = Array.new
        result.errors.each {|err| error << err.message }
        format.html { redirect_to sub_merchant_new_path, notice: "#{error*","}"}
      end
    end   
  end
  
  def init_braintree
    require "rubygems"
    require "braintree"
    
    #Add API keys

    
  end
  
end
