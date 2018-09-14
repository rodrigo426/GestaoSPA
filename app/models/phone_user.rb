class PhoneUser < ApplicationRecord
  belongs_to :user, optional: true
  #deixa o campo obrigatorio
  validates :number, presence: true

  def title
  	number.to_s
  end
end