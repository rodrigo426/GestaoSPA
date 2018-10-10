class AddIndicationToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :indication, :string
  end
end
