class AddUserToCashiers < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashiers, :user, foreign_key: true
  end
end
