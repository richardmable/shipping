module BoatsHelper
	def ports_select_option
		a = []
		PortManager.all.each do |x|
			a.push([x.location, x.id])
		end
		a
	end

	def port_array
		a = []
		PortManager.all.each do |x|
			a.push(x.location)
		end
		a
	end

	def location(x)
		#assign y to the Portmanager
		y = PortManager.find_by_id(x)
		y.location
	

	end

	def workorder(x)

		WorkOrder.find_by_id(x)
	


	end
		def container(x)
		Container.where(x)

		end

		def loaded_wos(x)
		BoatWorkOrder.where(boat_id: x).all

		end

	end


