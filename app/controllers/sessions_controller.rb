class SessionsController < ApplicationController
	#sessions index is our landing page
	def index
		#Route them to their respective home pages if they are already logged in
		if current_port_manager
			redirect_to port_managers_path :notice => "Currently logged in as #{portManager.email}"
		elsif current_salesman
			redirect_to salesmen_path :notice => "Currently logged in as #{salesman.email}"
		end
	end

	#this action will have two different paths
	#depending on whether the user logs in as port manager or a salesman
	def create
		#Check if the user entered a port manager email
		if PortManager.where(email: params[:email]).first
			#if the email is found in port managers, set portManager to that user
			portManager = PortManager.where(email: params[:email]).first
			#if the email and password using authenticate match
			if portManager && portManager.authenticate(params[:password])
				#set the session id to the port manager's id
				session[:user_id] = portManager.id
				#set @currentPortManager to the current Port Manager
				current_port_manager
				#redirect them to the port manager home page: the index action/view of Port Managers
				redirect_to port_managers_path :notice => "Successfully logged in as #{portManager.email}"
			else
				#if they did not match, tell them one or the other didn't match
				flash[:alert] = "Your email or password did not match."
				#render the index action of the sessions controller to stay on the login page
	  			render :index
			end
		#check if the user entered a salesman email
		elsif Salesman.where(email: params[:email]).first
			#if the user entered a salesman email, set salesman to that user
			salesman = Salesman.where(email: params[:email]).first
			if salesman && salesman.authenticate(params[:password])
				#set the session id to the salesman's id
				session[:user_id] = salesman.id
				#set @currentSalesman to the current Salesman
				current_salesman
				#redirect them to the salesmen home page: the index action/view of Salesmen
				redirect_to salesmen_path :notice => "Successfully logged in as #{salesman.email}"
			else
				#if they did not match, tell them one or the other didn't match
				flash[:alert] = "Your email or password did not match."
				#render the index action of the sessions controller to stay on the login page
	  			render :index
			end
  		end
	end

	#this will log a user out and redirect them to the landing page
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
