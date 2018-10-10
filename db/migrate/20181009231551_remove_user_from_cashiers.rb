class RemoveUserFromCashiers < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashiers, :user, :string
  end
end
