class SessionsController < ApplicationController

	#sessions index will be our landing page
	def index

	end

	#this action will have two different paths
	#depending on whether the user logs in as port manager
	#or a salesman
	def create
	end

	#this will log a user out and redirect them
	#to the landing page
	def destroy
	end

	
end
