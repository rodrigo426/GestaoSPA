class Cashier < ApplicationRecord
	has_many :item

	enum paid: [:yes, :no]
	enum paymment: [:credit_card, :debit_card, :money, :check]
end
