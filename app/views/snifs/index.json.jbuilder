json.array!(@snifs) do |snif|
  json.extract! snif, :id, :name, :phone_number, :address, :city, :state, :zipcode, :mcr_rating, :beds_capacity, :medicare, :medicaid, :percentage_occupied, :beds_unavailable, :in_hospital, :population, :corporation
  json.url snif_url(snif, format: :json)
end
