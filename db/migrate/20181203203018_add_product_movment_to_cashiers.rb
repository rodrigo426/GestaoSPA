class AddProductMovmentToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashiers, :product_movment, foreign_key: true
  end
end
