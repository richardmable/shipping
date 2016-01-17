class SessionsController < ApplicationController
	#sessions index is our landing page
	def index
		#don't use the application view layout on this landing page
		# render :layout => false
		#Route them to their respective home pages if they are already logged in
		if current_port_manager
			redirect_to port_managers_path :notice => "Currently logged in as #{@currentPortManager.email}"
		elsif current_salesman
			redirect_to salesmen_path :notice => "Currently logged in as #{@currentSalesman.email}"
		end
	end

	#this action will have two different paths
	#depending on whether the user logs in as port manager or a salesman
	def create
		#Check if the user entered a port manager email
		if PortManager.where(email: params[:email]).exists?
			#if the email is found in port managers, set portManager to that user
			portManager = PortManager.where(email: params[:email]).first
			#if the email and password using authenticate match
			if portManager && portManager.authenticate(params[:password])
				#set the session id to the port manager's id
				session[:user_id] = portManager.id
				session[:user_email] = portManager.email
				#set @currentPortManager to the current Port Manager
				current_port_manager
				#redirect them to the port manager home page: the index action/view of Port Managers
				flash[:notice] = "Successfully logged in as #{portManager.email}"
				redirect_to port_managers_path
			else
				#if they did not match, tell them one or the other didn't match
				flash[:alert] = "Your email or password did not match."
				#render the index action of the sessions controller to stay on the login page
	  			render :index
			end
		#check if the user entered a salesman email
		elsif Salesman.where(email: params[:email]).exists?
			#if the user entered a salesman email, set salesman to that user
			salesman = Salesman.where(email: params[:email]).first
			if salesman && salesman.authenticate(params[:password])
				#set the session id to the salesman's id
				session[:user_id] = salesman.id
				session[:user_email] = salesman.email
				#set @currentSalesman to the current Salesman
				current_salesman
				#redirect them to the salesmen home page: the index action/view of Salesmen
				flash[:notice] = "Successfully logged in as #{salesman.email}"
				redirect_to salesmen_path
			else
				#if they did not match, tell them one or the other didn't match
				flash[:alert] = "Your email or password did not match."
				#render the index action of the sessions controller to stay on the login page
	  			render :index
			end
		else
			flash[:alert] = "Your email or password did not match."
			render :index
  		end
	end

	#this will log a user out and redirect them to the landing page
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end
