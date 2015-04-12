json.array!(@hospital_readmissions) do |hospital_readmission|
  json.extract! hospital_readmission, :id, :provider_id, :hospital_name, :address, :city, :state, :zip_code, :county_name, :phone_number, :measure_name, :measure_id, :compared_to_national, :denominator, :score, :lower_estimate, :higher_estimate, :footnote, :measure_start_date, :measure_end_date
  json.url hospital_readmission_url(hospital_readmission, format: :json)
end
