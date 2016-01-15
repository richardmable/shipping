class BoatWorkOrder < ActiveRecord::Base
	belongs_to :boat
	belongs_to :work_order
end
