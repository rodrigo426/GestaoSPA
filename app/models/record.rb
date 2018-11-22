class Record < ApplicationRecord
  belongs_to :client, optional: true
  enum blood_pressure: [:normal, :alta, :baixa]

end
