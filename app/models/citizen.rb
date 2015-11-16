class Citizen < ActiveRecord::Base
	has_many :transactions
end
