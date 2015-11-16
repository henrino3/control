class Transaction < ActiveRecord::Base
  belongs_to :citizen
  #belongs_to :bank
end
