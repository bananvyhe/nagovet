class ApplicationController < ActionController::Base
	# before_action :set_default_format
	# protect_from_forgery with: :null_session
	# skip_forgery_protection
	# protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
	# protect_from_forgery with: :exception
	include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
 
	private

  def set_html_format
    request.format = :html
  end
  def set_default_format
    request.format = :json

  end
  def current_user
    @current_user ||= User.find(payload['user_id'])
  end
  
  def not_authorized
    render json: { error: 'ошибка jwt авторизации' }, status: :unauthorized
  end  
end
