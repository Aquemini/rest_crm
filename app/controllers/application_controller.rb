class ApplicationController < ActionController::API

  # protect_from_forgery with: :null_session
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      user = User.find_by(email: username)
      if user && user.authenticate(password)
        # redirect_to '/Users/1'
        return true
      else
        render status: :unauthorized
      end
    end
  end


  # private
  #
  # def authenticate
  #   authenticate_or_request_with_http_digest do |username|
  #     USERS[username]
  #   end
  # end


  def authenticate_user_from_token
    unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
      render json: { error: 'Bad Token'}, status: 401
    end
  end

  # def page_not_found
  #   e = Error.new(:status => 404, :message => "Wrong URL or HTTP method")
  #   render :json => e.to_json, :status => 404
  # end

end
