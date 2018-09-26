class Record < ApplicationRecord
  belongs_to :client
  enum blood_pressure: [:high, :normal, :low]

end
