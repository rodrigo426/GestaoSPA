class AddUserToCashier < ActiveRecord::Migration[5.2]
  def change
    add_column :cashiers, :user, :string
  end
end
