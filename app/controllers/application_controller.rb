class ApplicationController < ActionController::Base
	helper_method :current_user, :logged_in?

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!!current_user
	end

	def require_user
		if !logged_in?
			flash[:error] = "You must logged in first!!!"
			redirect_to login_path
		end
	end

	def logged_in_redirect
	  	if logged_in?
	  		flash[:error] = "You are already logged in."
	  		redirect_to root_path
	  	end
  	end
end
