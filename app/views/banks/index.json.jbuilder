json.array!(@banks) do |bank|
  json.extract! bank, :id, :name, :type, :reg_no, :founded, :headquarters, :ceo, :services, :email, :website, :logo_url
  json.url bank_url(bank, format: :json)
end
