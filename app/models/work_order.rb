class WorkOrder < ActiveRecord::Base
	validates_uniqueness_of :name
	has_many :containers
	belongs_to :salesman
	has_many :boats, through: :boat_work_orders
	
end
