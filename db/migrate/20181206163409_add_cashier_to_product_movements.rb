class AddCashierToProductMovements < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_movements, :cashier, foreign_key: true
  end
end
