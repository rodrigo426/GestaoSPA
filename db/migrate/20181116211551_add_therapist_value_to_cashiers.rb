class AddTherapistValueToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_column :cashiers, :therapist_value, :decimal
  end
end
