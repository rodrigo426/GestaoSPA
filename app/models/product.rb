class Product < ApplicationRecord
	has_many :product_movements
	#validates_numericality_of :quantity, :only_integer => true, :greater_than_or_equal_to => 0

  def name_with_price
    "#{name}: R$#{price}"
  end
end
