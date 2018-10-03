class Cashier < ApplicationRecord
	has_many :item

	enum paid: [:nao, :sim]
	enum paymment: [:cartao_credito, :cartao_debito, :dinheiro, :cheque]
	usar_como_dinheiro :price
	usar_como_dinheiro :paid_value
end
