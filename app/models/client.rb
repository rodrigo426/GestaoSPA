class Client < ApplicationRecord
	enum status: [:active, :inactive]
	has_many :phones
	has_one :address
end
