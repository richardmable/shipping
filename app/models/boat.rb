class Boat < ActiveRecord::Base
	validates_uniqueness_of :name
	has_many :salesmen, through: :salesman_boats
	has_many :salesman_boats
	has_many :port_managers, through: :port_manager_boats
	has_many :port_manager_boats
	has_many :work_orders, through: :boat_work_orders
	has_many :boat_work_orders
end
