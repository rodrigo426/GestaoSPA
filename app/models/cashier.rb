class Cashier < ApplicationRecord
	has_many :item
	belongs_to :user
	belongs_to :therapy
	belongs_to :client

	
  validates :user_id, presence: true
  validates :client_id, presence: true
  validates :therapy_id, presence: true

	enum paid: [:nao, :sim]
	enum paymment: ["Cartão de crédito", "cartão de débito", "Dinheiro", "Cheque"]
	usar_como_dinheiro :price
	usar_como_dinheiro :paid_value

	accepts_nested_attributes_for :item
	accepts_nested_attributes_for :client
end
