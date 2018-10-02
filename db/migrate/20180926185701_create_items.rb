class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.references :therapy, foreign_key: true
      t.text :description
      t.references :cashier, foreign_key: true

      t.timestamps
    end
  end
end
