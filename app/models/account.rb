class Account < ActiveRecord::Base
  belongs_to :bank
  belongs_to :citizen
  has_many :transactions
end
