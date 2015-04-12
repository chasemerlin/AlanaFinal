json.array!(@state_copds) do |state_copd|
  json.extract! state_copd, :id, :state, :respondents, :has_copd, :percentage, :ninety_five_percent_confidence_interval, :abbreviation
  json.url state_copd_url(state_copd, format: :json)
end
