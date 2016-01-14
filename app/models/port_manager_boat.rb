class PortManagerBoats < ActiveRecord::Base
	has_many :port_managers
	has_many :boats
end
