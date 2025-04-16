json.extract! member, :id, :name, :email, :membership_data, :created_at, :updated_at
json.url member_url(member, format: :json)
