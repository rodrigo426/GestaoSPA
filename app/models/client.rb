class Client < ApplicationRecord
	enum status: [:active, :inactive]
	has_many :phone_clients
	has_one :address
	validates :name, presence: true
	accepts_nested_attributes_for :address, update_only: false
end