class Admin::RedactorsController < ApplicationController
	before_action :authorize_access_request!
	ROLES = %w[admin manager].freeze
	def index
    @red = Redactors.all
    puts "--------------"
    puts @red
    puts "--------------"
    render json: @red	
	end
 
end