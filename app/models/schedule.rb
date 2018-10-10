class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :therapy

  validates :user_id, presence: true
  validates :client_id, presence: true
  validates :therapy_id, presence: true

  #enum color: [:green, :red, :blue]


end
