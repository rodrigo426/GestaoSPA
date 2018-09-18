class AddTherapiesToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_reference :schedules, :therapy, foreign_key: true
  end
end
