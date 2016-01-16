class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #Check if a port manager or salesman is logged in before every action
  before_action :current_port_manager
  before_action :current_salesman

	#this will set the session if a user logs in as 
	#a Port Manager and call @currentPortManager
	#to run methods on the logged in user
	#need to check if there is a session id and whether that PortManager exists
	#this is becuase we run this method on every action, and if only logged in as one
	#or the other, the application will crash since there is a session id
	def current_port_manager
		if session[:user_id] && if PortManager.where(id: session[:user_id]).exists?
			@currentPortManager = PortManager.find(session[:user_id])
		end
	end
	end

	#this will set the session if a user
	#logs in as a Salesman, and call @currentSalesman
	#to run methods on the logged in user
	def current_salesman
		if session[:user_id] && if Salesman.where(id: session[:user_id]).exists?
			@currentSalesman = Salesman.find(session[:user_id])
		end
	end
	end

	#this is a method if we do not want
	#a Port Manager to access a view without being logged in
	def no_current_port_manager
		if not @currentPortManager
			flash[:alert] = "You need to be logged as a Port Manager to do that!"
		end
	end

	#this is a method if we do not want
	#a Salesman to access a view without being logged in
	def no_current_salesman
		if not @currentSalesman
			flash[:alert] = "You need to be logged as a Salesman to do that!"
		end
	end
end