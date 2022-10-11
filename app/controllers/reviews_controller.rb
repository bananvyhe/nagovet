class ReviewsController < ApplicationController

	def index
		# request.format = :json
		@reviews = Review.all
 # format.html { render :index }
  # format.json { render json:  @reviews}
		render json: @reviews.as_json(only: [:id, :body, :name])
 
	end
end
