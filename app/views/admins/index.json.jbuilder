json.array!(@admins) do |admin|
  json.extract! admin, :id, :username, :password, :name, :secuirity_question, :secuirity_answer, :email, :phone, :level
  json.url admin_url(admin, format: :json)
end
