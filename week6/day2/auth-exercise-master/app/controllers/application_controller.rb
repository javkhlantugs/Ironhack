class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :user_logged_in?

  def get_current_user
      @current_user = User.find_by(id: session[:user_id])
      if @current_user == nil
        @name= "Ironhacker"
      else
        @name = @current_user.username
      end
   end

   def user_logged_in?
    if session[:user_id]
      true
    else
      false
    end
  end
end
