json.array!(@patient_profiles) do |patient_profile|
  json.extract! patient_profile, :id, :user_id, :firstname, :lastname, :pcprequest, :profilepic, :zipcode, :docpref1, :docpref2, :doctpref3
  json.url patient_profile_url(patient_profile, format: :json)
end
