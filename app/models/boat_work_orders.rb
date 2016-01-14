class BoatWorkOrders < ActiveRecord::Base
	has_many :boats
	has_many :work_orders
end
