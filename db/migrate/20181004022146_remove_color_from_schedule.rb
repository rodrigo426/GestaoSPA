class RemoveColorFromSchedule < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :color, :string
  end
end
