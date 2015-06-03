json.array!(@fines) do |fine|
  json.extract! fine, :id, :hospital_name, :staffed_beds, :total_payments, :copd_total, :copd_ratio, :ami_total, :ami_ratio, :pneumonia_total, :pneumonia_ratio, :hip_knee_total, :hip_knee_ratio, :hf_total, :hf_ratio
  json.url fine_url(fine, format: :json)
end
