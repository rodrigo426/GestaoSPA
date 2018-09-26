class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :therapy

  enum paymment: [:credit_card, :debit_card, :money, :check]
end
