json.extract! user, :id, :username, :email, :password, :new, :edit, :created_at, :updated_at
json.url user_url(user, format: :json)
