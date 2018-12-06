class CreateProductMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :product_movements do |t|
      t.references :product, foreign_key: true
      t.integer :kind
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
