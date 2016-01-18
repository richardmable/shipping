class PortManager < ActiveRecord::Base
	#check that this email is not in the database as a salesman
	#thanks to http://stackoverflow.com/questions/21012826/validating-uniqueness-across-two-tables for help with this
	#will not work for a 'race condition', but this should not be a problem for our app
	def unique_email_port_manager
  		if Salesman.where(email: "#{self.email}").exists?
  			puts 'duplicate email found in salesmen table'
  		end
	end
	#secure password using bcrypt gem
	has_secure_password
	#validate password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
	validates_presence_of :email, on: :create
	#check if there is already a port managed for that location
	validates_uniqueness_of :location
	validates_uniqueness_of :email, uniqueness: { case_sensitive: false }
	#check for a valid email using the validates_format_of_email gem
	validates :email, :email_format => { :message => 'Are you sure you entered a valid email address?' }
	#run the unique email method to see if it's anywhere in the database
	validate :unique_email_port_manager 
	#link to boats through join table
	has_many :boats, through: :port_manager_boats
	has_many :port_manager_boats
	has_many :work_orders
end
