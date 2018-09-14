class RemoveClientIdFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :client_id, :bigint
  end
end
