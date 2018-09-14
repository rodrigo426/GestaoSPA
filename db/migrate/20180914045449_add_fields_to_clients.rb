class AddFieldsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :address_id, :bigint
  end
end
