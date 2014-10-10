json.array!(@doctor_profiles) do |doctor_profile|
  json.extract! doctor_profile, :id, :firstname, :lastname, :profilepic, :schedule, :speciality, :title, :userid, :zipcode, :fee, :orgid, :plan, :npi
  json.url doctor_profile_url(doctor_profile, format: :json)
end
