module WorkOrdersHelper
	def boatname(x)
		boat.find_by_id(x.id).name.last
	end

def boat_select_option
		a = []
		Boat.all.each do |x|
			a.push([x.name, x.id])
		end
		a
	end

	def cargo_type_name
		a=
	      ['Apples'],
	      ['Bananas'],
	      ['Watermelon'],
	      ['Grapes'],
	      ['Strawberries'],
	      ['Oranges'],
	      ['Peaches'],
	      ['Kiwis'],
	      ['Pineapples',],
	      ['Raspberries']

	      a
	  
	end

def boat_location(x)
	Boat.find_by_id(x).at_sea
end

	def location(x)

		y = PortManager.find_by_id(x)
		y.location

	end

	def wo_status(x)
		current = WorkOrder.find_by_id(x)
		
		if !current.complete && !current.boat_id
			"On the docks in " + location(current.origin_port_manager_id) + "to be loaded to ship."
		
		elsif !current.complete && current.boat_id 
			
			if !boat_location(current.boat_id)
				"On board " + Boat.find_by_id(x).name + " at the docks in " + location(current.origin_port_manager_id) 
			
			else boat_location(current.boat_id)
					"On board " + Boat.find_by_id(x).name + " at sea, destined for " + location(current.destination_port_manager_id) 
			end
		
		elsif current.complete 
		"Order is delivered to " + location(current.destination_port_manager_id) 
		end

	end



end
