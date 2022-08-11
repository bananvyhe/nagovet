class MeshandlController < ApplicationController
	# before_action :user_params
	require 'httparty'
	skip_before_action :verify_authenticity_token
	# encoding: utf-8
	# require 'telegram/bot'
require 'uri'
	def mes
		puts "123"
 		token = Rails.application.credentials.aws[:token]
 		mass = []
 		params.each_value do |value|
 			
 			if value == nil
  			mass << "не заполнено"
  		else
  			mass << value.to_s
  		end
  		# puts mass
  		# puts index.inspect
  		# puts value.inspect
		end

 		mesa = 'имя: '+mass[0]+' тел: '+mass[1]+' сообщение: '+mass[2]+' дата: '+mass[3]+' время: '+mass[4]
 
 		mesa = 'https://api.telegram.org/bot5531512315:AAHmGCiQQQfdVzQrcja0c9woh5TxrrYldk8/sendMessage?chat_id=199874565&text='+mesa 
 	# mesa = mesa.to_s
 	paf = URI::Parser.new
 	paf = paf.escape(mesa)
 	puts paf
 		# +' date: '+ params[:date1].to_s+' time: '+ params[:date2].to_s

		HTTParty.post(paf)


		# puts"=============-===========-=========="
		# puts token
		# puts"=============-===========-=========="

	 # 	Telegram::Bot::Client.run(token) do |bot|
	 # 		 bot.listen do |message|
  #         puts message
  #       end
	 # 		bot.api.send_message(chat_id: "199874565", text: "Hello,sdad")
		# end
	end

  private
 
  # def user_params
  #   params.permit(:name,:mes, :phone, :text, :time, :data)
  # end	
end
