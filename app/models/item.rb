class Item < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :therapy
  belongs_to :cashier, optional: true
  enum active: [:yes, :no]

  	def title
		client.name.to_s if client.name + "/" + 
		user.name.to_s if user
	end

	after_create do
  		Cashier.create(price: self.therapy.price, paid: :nao, client: self.client.name, therapy: self.therapy.name, user: self.user.name)
  		
	end
end
