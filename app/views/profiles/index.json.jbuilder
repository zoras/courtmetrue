json.array!(@profiles) do |profile|
  json.extract! profile, :id, :age
  json.url profile_url(profile, format: :json)
end
