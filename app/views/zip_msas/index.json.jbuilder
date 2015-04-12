json.array!(@zip_msas) do |zip_msa|
  json.extract! zip_msa, :id, :zip_code, :state_abbreviation, :msa_number, :gpci_one, :gpci_two, :gpci_three, :county_number, :msa_name, :zip_population, :msa_population
  json.url zip_msa_url(zip_msa, format: :json)
end
