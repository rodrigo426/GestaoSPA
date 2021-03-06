class Cashier < ApplicationRecord
	has_many :item, dependent: :destroy
	has_many :product_movements, dependent: :destroy
	belongs_to :user, optional: true
	belongs_to :therapy, optional: true
	belongs_to :client, optional: true
	has_many :pagamento_caixa, dependent: :destroy
	has_many :event, dependent: :destroy

	enum paid: [:nao, :sim]
	enum discount: ['Não', 'Sim']
	enum paymment: ["Cartão de crédito", "Cartão de débito", "Dinheiro", "Cheque", "Tranferência Bancária", "Cortesia", "Pacote", "Permuta", "Pendente", "Vale Presente", "Pago"]
	#usar_como_dinheiro :price
	#usar_como_dinheiro :paid_value

	accepts_nested_attributes_for :item
	accepts_nested_attributes_for :client
	accepts_nested_attributes_for :product_movements
	accepts_nested_attributes_for :pagamento_caixa
	
	after_update do
		unless self.user.name == 'Julio'
			Event.find_or_initialize_by(:cashier_id => self.id).update_attributes(
				:name => self.user.name,
				:price => self.therapist_value,
				:description => "Repasse para terapeuta",
				:start => self.created_at,
			)
		end
	end

end
