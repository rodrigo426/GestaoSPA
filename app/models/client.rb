class Client < ApplicationRecord
#	require 'carrierwave/processing/mini_magick'
	has_many :phone_clients
	has_one :address
	has_one :record
	validates :name, presence: true
	accepts_nested_attributes_for :address, update_only: false
	accepts_nested_attributes_for :record, update_only: false

	mount_uploader :photo, PhotoUploader

	def self.search(term)
  		where('LOWER(name) LIKE :term OR LOWER(email) LIKE :term', term: "%#{term.downcase}%")
	end

end