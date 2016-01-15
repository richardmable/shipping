class Container < ActiveRecord::Base
	attr_accessor :quantity
	belongs_to :work_order
end
