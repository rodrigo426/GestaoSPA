class CreatePhoneUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_users do |t|
      t.string :number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
