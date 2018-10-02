class Record < ApplicationRecord
  belongs_to :client, optional: true
  enum blood_pressure: [:high, :normal, :low]

end
