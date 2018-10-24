require 'client.rb'
class DashboardController < ApplicationController
	def index
		@clients = Client.all
		@cashiers = Cashier.all
	end
end
