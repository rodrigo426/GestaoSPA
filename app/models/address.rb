class Address < ApplicationRecord
	belongs_to :client, optional: true

	def title
		street.to_s + ", " + 
		number.to_s + ", " + 
		complement.to_s + ", " + 
		neighborhood.to_s + ", " + 
		city.to_s
	end
end