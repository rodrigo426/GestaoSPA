class PhoneUser < ApplicationRecord
  belongs_to :user
  #deixa o campo obrigatorio
  validates :number, presence: true
end
