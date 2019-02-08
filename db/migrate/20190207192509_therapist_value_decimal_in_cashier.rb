class TherapistValueDecimalInCashier < ActiveRecord::Migration[5.2]
  def change
  	change_column :cashiers, :therapist_value, :decimal, precision: 5, scale: 2
  end
end
