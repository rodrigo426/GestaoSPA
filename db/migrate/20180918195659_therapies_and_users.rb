class TherapiesAndUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :therapies_users do |t|
      t.references :therapy, :user
    end
  end
end
