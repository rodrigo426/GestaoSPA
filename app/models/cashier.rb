class Cashier < ApplicationRecord
	has_many :item

	enum paid: [:no, :yes]
	enum paymment: [:credit_card, :debit_card, :money, :check]
	usar_como_dinheiro :price
	usar_como_dinheiro :paid_value
end
