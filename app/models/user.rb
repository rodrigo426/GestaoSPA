class User < ApplicationRecord
  enum kind: [:therapist, :manager, :recepcionist]
  enum status: [:active, :inactive]

  #has_many :consultas
  has_many :phones
  has_one :address

end
