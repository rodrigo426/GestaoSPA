class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum kind: [:therapist, :manager, :receptionist]
  enum status: [:active, :inactive]

  #has_many :consultas
  has_many :phone_users
  has_and_belongs_to_many :therapies

  validates :color, uniqueness: true

end
