class AddTherapyToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashiers, :therapy, foreign_key: true
  end
end
