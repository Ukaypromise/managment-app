json.extract! contact, :id, :name, :info, :created_at, :updated_at
json.url contact_url(contact, format: :json)
