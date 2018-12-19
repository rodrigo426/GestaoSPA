class AddDescriptionToProductMovements < ActiveRecord::Migration[5.2]
  def change
    add_column :product_movements, :description, :text
  end
end
