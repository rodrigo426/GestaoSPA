class RemoveTherapyFromCashiers < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashiers, :therapy, :string
  end
end
