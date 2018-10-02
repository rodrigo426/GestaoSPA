class AddTherapyToCashier < ActiveRecord::Migration[5.2]
  def change
    add_column :cashiers, :therapy, :string
  end
end
