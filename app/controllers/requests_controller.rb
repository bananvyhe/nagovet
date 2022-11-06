class RequestsController < ApplicationController
	def index
    @req = Request.all
    render json: @req.as_json(only: [:id, :position])
	end
end
