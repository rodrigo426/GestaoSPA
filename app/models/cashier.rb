class Cashier < ApplicationRecord
	has_many :item, dependent: :destroy
	has_many :product_movements, dependent: :destroy
	belongs_to :user
	belongs_to :therapy
	belongs_to :client
	has_many :pagamento_caixa, dependent: :destroy

	enum paid: [:nao, :sim]
	enum discount: ['Não', 'Sim']
	enum paymment: ["Cartão de crédito", "Cartão de débito", "Dinheiro", "Cheque", "Tranferência Bancária", "Cortesia", "Pacote", "Permuta", "Pendente"]
	#usar_como_dinheiro :price
	#usar_como_dinheiro :paid_value

	accepts_nested_attributes_for :item
	accepts_nested_attributes_for :client
	accepts_nested_attributes_for :product_movements
	accepts_nested_attributes_for :pagamento_caixa


end
