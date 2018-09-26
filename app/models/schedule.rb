class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :therapy

  validates :user_id, presence: true
  validates :client_id, presence: true
  validates :therapy_id, presence: true

#----------Autocomplete-Client
  def client_name
  	client.try(:name)
  end

  def client_name=(name)
  	sel.client = Client.find_or_create_by_name(name) if name.present?
  	
  end
#----------Autocomplete-User
  def user_name
  	user.try(:name)
  end

  def user_name=(name)
  	sel.user = User.find_or_create_by_name(name) if name.present?
  	
  end
#---------Autocomplete-Therapy
  def therapy_name
  	therapy.try(:name)
  end

  def therapy_name=(name)
  	sel.therapy = Therapy.find_or_create_by_name(name) if name.present?
  	
  end
end
