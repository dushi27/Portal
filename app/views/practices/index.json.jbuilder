json.array!(@practices) do |practice|
  json.extract! practice, :id, :name, :speciality, :address_1, :addres_2, :zip, :phone, :fax, :email, :website
  json.url practice_url(practice, format: :json)
end
