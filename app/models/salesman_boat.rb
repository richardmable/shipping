class SalesmanBoat < ActiveRecord::Base
	belongs_to :boat
	belongs_to :salesman
end
