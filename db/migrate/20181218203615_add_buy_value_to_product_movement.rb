class AddBuyValueToProductMovement < ActiveRecord::Migration[5.2]
  def change
    add_column :product_movements, :buy_value, :decimal
  end
end
