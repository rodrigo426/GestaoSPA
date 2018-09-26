class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.boolean :cream_allergy
      t.integer :blood_pressure
      t.boolean :uses_pacemaker
      t.boolean :diabetes
      t.boolean :surgery
      t.string :surgery_where
      t.boolean :accident_fracture
      t.string :accident_where
      t.boolean :bone_disease
      t.boolean :medicine
      t.string :medicine_which
      t.boolean :faint_seizure
      t.boolean :woman_pregnant
      t.boolean :woman_contraceptive
      t.text :pains
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
