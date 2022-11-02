class ReviewsController < ApplicationController

	def index
		# request.format = :json
		@reviews = Review.all
 # format.html { render :index }
  # format.json { render json:  @reviews}
		render json: @reviews.as_json(only: [:id, :body, :name])
	end
	
	def saverevitem
		@reviews =  Review.find(params[:id]) 
	  if @reviews.update(review_params)
	  	render json: @reviews, status: :ok
	  else
	  end
	end

	def getrev
		full = Review.find(params[:id]) 
		render json: full
	end

	private
  	def review_params
    	params.permit(:id, :name, :body)
  	end		
end
