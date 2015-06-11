json.array!(@medicare_advantages) do |medicare_advantage|
  json.extract! medicare_advantage, :id, :state, :state_abbreviation, :organization_name, :enrolled, :total_state_ma_enrollment, :market_share_in_state
  json.url medicare_advantage_url(medicare_advantage, format: :json)
end
