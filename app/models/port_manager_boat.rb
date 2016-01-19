class PortManagerBoat < ActiveRecord::Base
	belongs_to :port_manager
	belongs_to :boat
	attr_accessor :port_manager_id, :boat_id
end
