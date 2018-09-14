class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.string :occupation

      t.timestamps
    end
  end
end
