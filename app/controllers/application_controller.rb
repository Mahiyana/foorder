class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def main
    @message = 'hello'
  end

end
