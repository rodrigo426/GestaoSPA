class AddDiscountToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_column :cashiers, :discount, :integer
  end
end
