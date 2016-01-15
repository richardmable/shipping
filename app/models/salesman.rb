class Salesman < ActiveRecord::Base
	#secure password using bcrypt gem
	has_secure_password
	#validate password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
	#check if there is already a salesman for that territory
	validates_uniqueness_of :territory
	validates_uniqueness_of :email
	has_many :work_orders
	has_many :boats, through: :salesman_boat
	has_many :salesman_boat

end
