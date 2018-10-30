class Client < ApplicationRecord
#	require 'carrierwave/processing/mini_magick'
	paginates_per 10
	has_many :phone_clients, dependent: :destroy
	has_one :address, dependent: :destroy
	has_one :record, dependent: :destroy
	validates :name, presence: true
	has_many :items, :through => :client_items
	accepts_nested_attributes_for :phone_clients, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :address
	accepts_nested_attributes_for :record, update_only: false

	#usar_como_dinheiro :credit




end