class TherapistValueDecimalInCashier2 < ActiveRecord::Migration[5.2]
  def change
  	change_column :cashiers, :therapist_value, :decimal, precision: 8, scale: 2
  end
end
