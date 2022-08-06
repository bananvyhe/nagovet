class MeshandlController < ApplicationController

	skip_before_action :verify_authenticity_token
	require 'telegram/bot'

	def mes
 		token = Rails.application.credentials.aws[:token]
		# puts"=============-===========-=========="
		# puts token
		# puts"=============-===========-=========="

	 	Telegram::Bot::Client.run(token) do |bot|
	 		bot.api.send_message(chat_id: "199874565", text: "Hello,sdad")
		end

	end
  private
 
  def user_params
    params.permit(:name,:mes)
  end	
end
