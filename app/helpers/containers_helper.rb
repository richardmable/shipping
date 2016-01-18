module ContainersHelper
	def location(x)

		y = PortManager.find_by_id(x)
		y.location
	

	end
end
