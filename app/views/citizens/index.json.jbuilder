json.array!(@citizens) do |citizen|
  json.extract! citizen, :id, :name, :phone_num1, :phone_num2, :email, :address, :nat_id
  json.url citizen_url(citizen, format: :json)
end
