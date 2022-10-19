class ContactsController < ApplicationController
	def index
		@contact = Contact.all
		render json: @contact.as_json(only: [:id, :tel, :position, :desc])
	end	
end
