class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :development_authentication

  private
  
    def development_authentication
      authenticate_or_request_with_http_basic do |username, password|
        username == "alt" && password == "tla"
      end
    end
end
