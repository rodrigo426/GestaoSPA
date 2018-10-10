class RemoveClientFromCashiers < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashiers, :client, :string
  end
end
