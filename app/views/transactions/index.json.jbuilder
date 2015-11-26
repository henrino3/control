json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :transaction_type, :amount, :balance, :transaction_date
  json.url transaction_url(transaction, format: :json)
end
