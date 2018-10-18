require 'client.rb'
class DashboardController < ApplicationController
	def index
		@clients = Client.all
	end
end
