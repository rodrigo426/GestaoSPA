class AddCashierToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :cashier, foreign_key: true
  end
end
