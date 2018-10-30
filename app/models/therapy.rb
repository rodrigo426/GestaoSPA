class Therapy < ApplicationRecord
	has_and_belongs_to_many :users

	usar_como_dinheiro :price
	has_many :items, :through => :therapy_items
end
