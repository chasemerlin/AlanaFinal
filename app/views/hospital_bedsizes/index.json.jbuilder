json.array!(@hospital_bedsizes) do |hospital_bedsize|
  json.extract! hospital_bedsize, :id, :hospital_name, :city, :state, :staffed_beds, :total_discharges, :patient_days, :gross_patient_revenue
  json.url hospital_bedsize_url(hospital_bedsize, format: :json)
end
