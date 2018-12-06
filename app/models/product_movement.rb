class ProductMovement < ApplicationRecord
  belongs_to :product
  belongs_to :cashier, optional: true
  belongs_to :user

  enum kind: ["Entrada", "Saída"]

  after_create do
    product = Product.find_by(id: self.product.id)
    product_movement = ProductMovement.find_by(id: self.id)
    if self.kind == "Entrada"
      if self.product.quantity == nil
        self.product.quantity = 0
      end
      if self.quantity == nil
        self.quantity = 0
      end
      product.update(quantity: self.product.quantity + self.quantity)
      product_movement.update(price: self.product.price)
    else
      product.update(quantity: self.product.quantity - self.quantity)
      product_movement.update(price: self.product.price)
    end
  end
end
