class Client < ApplicationRecord
#	require 'carrierwave/processing/mini_magick'
	has_many :phone_clients, dependent: :destroy
	has_one :address
	has_one :record
	validates :name, presence: true
	accepts_nested_attributes_for :phone_clients, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
	accepts_nested_attributes_for :address, update_only: false
	accepts_nested_attributes_for :record, update_only: false

	mount_uploader :photo, PhotoUploader
	#usar_como_dinheiro :credit




end