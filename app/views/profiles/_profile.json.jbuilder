json.extract! profile, :id, :first_name, :middle_name, :last_name, :position, :address, :mobile, :phone, :email, :website, :created_at, :updated_at
json.url profile_url(profile, format: :json)
