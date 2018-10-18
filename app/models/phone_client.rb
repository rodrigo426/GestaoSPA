class PhoneClient < ApplicationRecord
  belongs_to :client, optional: true
  #deixa o campo obrigatorio
  validates :number, presence: true


  def title
  	number.to_s
  end
end