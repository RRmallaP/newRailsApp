json.array!(@users) do |user|
  json.extract! user, :username, :email, :dob, :gender
  json.url user_url(user, format: :json)
end