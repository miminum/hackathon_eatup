json.extract! profile, :id, :first_name, :last_name, :blurb, :profile_image_data, :gender, :city, :country_code, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
