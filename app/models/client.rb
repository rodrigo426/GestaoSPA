class Client < ApplicationRecord
	enum status: [:active, :inactive]
	has_many :phone_clients
	has_one :address
	validates :name, presence: true
end
