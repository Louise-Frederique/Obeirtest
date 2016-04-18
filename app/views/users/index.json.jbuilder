json.array!(@users) do |user|
  json.extract! user, :id, :firtsname, :lastname, :mail
  json.url user_url(user, format: :json)
end
