class RequestsController < ApplicationController
	def index
    @req = Request.all
    render json: @req.as_json(only: [:id, :position])
	end

	def aitem
 		@requests =  Request.new(request_params)
	  if @requests.save 
	  	render json: @requests, status: :ok
	  else 	
	  end	 
	end	
	
	private
  	def request_params
    	params.permit(:id, :position)
  	end			
end
