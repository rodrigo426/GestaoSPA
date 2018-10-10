class AddCreditToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :credit, :decimal
  end
end
