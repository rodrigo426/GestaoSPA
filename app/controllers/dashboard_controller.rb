class DashboardController < ApplicationController
	def index
	end
	def sell_week
		render json: Cashier.group_by_day_of_week(:created_at, format: "%a").count
	end
	
end
