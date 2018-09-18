class AddColorToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :color, :string
  end
end
