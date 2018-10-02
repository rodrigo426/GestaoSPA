class CreateCashiers < ActiveRecord::Migration[5.2]
  def change
    create_table :cashiers do |t|
      t.decimal :price
      t.integer :paymment
      t.decimal :paid_value
      t.integer :paid

      t.timestamps
    end
  end
end
