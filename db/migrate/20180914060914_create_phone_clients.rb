class CreatePhoneClients < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_clients do |t|
      t.string :number
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
