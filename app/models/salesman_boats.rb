class SalesmanBoats < ActiveRecord::Base
	has_many :boats
	has_many :salesmen
end
