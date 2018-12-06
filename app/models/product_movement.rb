class ProductMovement < ApplicationRecord
  belongs_to :product
  has_one :cashier

  enum kind: ["Entrada", "Saída"]

  after_create do
    product = Product.find_by(id: self.product.id)
    if self.kind == "Entrada"
      if self.product.quantity == nil
        self.product.quantity = 0
      end
      if self.quantity == nil
        self.quantity = 0
      end
      product.update(price: self.price, quantity: self.product.quantity + self.quantity)
    else
      product.update(price: self.price, quantity: self.product.quantity - self.quantity)
    end
  end
end
