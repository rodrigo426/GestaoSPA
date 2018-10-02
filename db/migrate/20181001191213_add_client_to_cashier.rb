class AddClientToCashier < ActiveRecord::Migration[5.2]
  def change
    add_column :cashiers, :client, :string
  end
end
