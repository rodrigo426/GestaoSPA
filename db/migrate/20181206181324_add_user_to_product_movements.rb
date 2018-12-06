class AddUserToProductMovements < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_movements, :user, foreign_key: true
  end
end
