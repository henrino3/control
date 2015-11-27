json.array!(@admins) do |admin|
  json.extract! admin, :id, :username, :password, :name, :security_question, :security_answer, :email, :phone, :level
  json.url admin_url(admin, format: :json)
end
