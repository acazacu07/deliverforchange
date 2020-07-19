json.extract! charity, :id, :name, :address, :eircode, :phonenumber, :description, :created_at, :updated_at
json.url charity_url(charity, format: :json)
