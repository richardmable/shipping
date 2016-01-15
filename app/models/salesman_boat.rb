class SalesmanBoat < ActiveRecord::Base
	has_many :boats
	has_many :salesmen
end
