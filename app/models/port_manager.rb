class PortManager < ActiveRecord::Base
	#secure password using bcrypt gem
	has_secure_password
	#validate password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
	#check if there is already a port managed for that location
	validates_uniqueness_of :location
	validates_uniqueness_of :email
	#link to boats through join table
	has_many :boats, through: :port_manager_boats
end
