json.extract! user, :id, :first_name, :last_name, :email, :user_name, :zipcode, :profile_pic, :due_date, :created_at, :updated_at
json.url user_url(user, format: :json)
