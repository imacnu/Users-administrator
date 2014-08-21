json.array!(@users) do |user|
  json.extract! user, :id, :name, :mail, :professional
  json.url user_url(user, format: :json)
end
