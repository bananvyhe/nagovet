class PricesController < ApplicationController
	def index
	 
		@prices = Price.all
 # format.html { render :index }
  # format.json { render json:  @reviews}
		render json: @prices.as_json(only: [:id, :cost, :name, :duration])
 
	end
end
