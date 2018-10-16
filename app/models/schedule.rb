class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :therapy

  validates :user_id, presence: true
  validates :client_id, presence: true
  validates :therapy_id, presence: true

  extend TimeSplitter::Accessors
  #split_accessor :start_time
  #split_accessor :end_time
  split_accessor :start_time, :end_time, format: "%D", time_format: "%I:%M%p"


end
