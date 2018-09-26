class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.references :therapy, foreign_key: true
      t.text :description
      t.decimal :price
      t.integer :paymment
      t.decimal :paid_value
      t.boolean :paid

      t.timestamps
    end
  end
end
