json.array!(@courtship_preferences) do |courtship_preference|
  json.extract! courtship_preference, :id, :name
  json.url courtship_preference_url(courtship_preference, format: :json)
end
