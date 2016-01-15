class PortManagerBoat < ActiveRecord::Base
	belongs_to :port_manager
	belongs_to :boat
end
