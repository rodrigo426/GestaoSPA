class Record < ApplicationRecord
  belongs_to :client, optional: true
  enum blood_pressure: [:alta, :normal, :baixa]

end
