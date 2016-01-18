class WorkOrder < ActiveRecord::Base
	has_many :containers
	belongs_to :salesman
	has_many :port_managers
	has_many :boats, through: :boat_work_orders
	has_many :boat_work_orders
	accepts_nested_attributes_for :containers
	validates_presence_of :cost, on: :create
	validates_presence_of :name, on: :create
	validates_presence_of :description, on: :create
end
