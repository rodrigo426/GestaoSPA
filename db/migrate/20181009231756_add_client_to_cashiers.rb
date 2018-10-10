class AddClientToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashiers, :client, foreign_key: true
  end
end
