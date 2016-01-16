module WorkOrdersHelper
	def boatname(x)
		boat.find_by_id(x.id).name.last
	end


end