class MudarNomeRepasse < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :cashiers, :repasse, :therapist_value
  end

  def self.down
    rename_column :cashiers, :repasse, :therapist_value
  end
end
