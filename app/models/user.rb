class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable
  enum kind: [:terapeuta, :gerente, :recepcionista, :financeiro, :tecnico]
  enum status: [:active, :inactive]

  has_many :phone_users, dependent: :destroy
  has_many :cashiers, dependent: :destroy
  has_many :items, dependent: :destroy
  has_and_belongs_to_many :therapies

  #validates :color, uniqueness: true

end
