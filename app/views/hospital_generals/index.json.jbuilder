json.array!(@hospital_generals) do |hospital_general|
  json.extract! hospital_general, :id, :provider_id, :name, :address, :city, :state, :zip, :county, :phone, :type, :ownership, :emergency
  json.url hospital_general_url(hospital_general, format: :json)
end
