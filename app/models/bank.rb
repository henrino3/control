class Bank < ActiveRecord::Base
	has_many :accounts
	has_many :customers, class_name: 'Citizen', through: :accounts
end
