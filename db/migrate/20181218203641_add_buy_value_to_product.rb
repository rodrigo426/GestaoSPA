class AddBuyValueToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :buy_value, :decimal
  end
end
