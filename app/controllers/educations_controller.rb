class EducationsController < ApplicationController
	def index
    @ed = Education.all
    render json: @ed.as_json(only: [:id, :desc, :main])
	end

	private
  	def education_params
    	params.permit(:id, :position)
  	end			
end
