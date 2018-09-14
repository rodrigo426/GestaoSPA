class PhoneClient < ApplicationRecord
  belongs_to :client
  #deixa o campo obrigatorio
  validates :number, presence: true
end
