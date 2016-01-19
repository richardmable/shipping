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

	def route(origin, destination)

		if origin == 9 && destination == 4
			x = 1
		elsif origin == 9 && destination == 1
			x = 2
		elsif origin == 9 && destination == 5
			x = 3
		elsif origin == 6 && destination == 9
			x = 4
			elsif origin == 6 && destination == 10
				x = 5
		elsif origin == 10 && destination == 6
			x = 6
			elsif origin == 10 && destination == 5
				x = 7
			elsif origin == 10 && destination == 1
				x = 8
			elsif origin == 3 && destination == 7
				x = 9
			elsif origin == 3 && destination == 8
				x = 10
			elsif origin == 3 && destination == 4
				x = 11
			elsif origin == 7 && destination == 6
				x = 12
			elsif origin == 7 && destination == 3
				x = 13
			elsif origin == 7 && destination == 5
				x = 14
			elsif origin == 5 && destination == 9
				x = 15
			elsif origin == 5 && destination == 10
				x = 16
			elsif origin == 5 && destination == 8
				x = 17
			elsif origin == 8 && destination == 3
				x = 18
			elsif origin == 8 && destination == 5
				x = 19
			elsif origin == 8 && destination == 4
				x = 20
			elsif origin == 4 && destination == 3
				x = 21
			elsif origin == 4 && destination == 8
				x = 22
			elsif origin == 1 && destination == 9
				x = 23
			elsif origin == 1 && destination == 3
				x = 24
			elsif origin == 1 && destination == 8
				x = 25
			elsif origin == 2 && destination == 6
				x = 26
			elsif origin == 2 && destination == 5
				x = 27
			elsif origin == 2 && destination == 1
				x = 28
			end


			x	

	end
def cost(origin, destination, containers)
	y = containers 

		if origin == 9 && destination == 4
			x = 5234
		elsif origin == 9 && destination == 1
			x = 4432
		elsif origin == 9 && destination == 5
			x = 5321
		elsif origin == 6 && destination == 9
			x = 8432
			elsif origin == 6 && destination == 10
				x = 8432
		elsif origin == 10 && destination == 6
			x = 7543
			elsif origin == 10 && destination == 5
				x = 3543
			elsif origin == 10 && destination == 1
				x = 5897
			elsif origin == 3 && destination == 7
				x = 3243
			elsif origin == 3 && destination == 8
				x = 5534
			elsif origin == 3 && destination == 4
				x = 6342
			elsif origin == 7 && destination == 6
				x = 8783
			elsif origin == 7 && destination == 3
				x = 3243
			elsif origin == 7 && destination == 5
				x = 8453
			elsif origin == 5 && destination == 9
				x = 7435
			elsif origin == 5 && destination == 10
				x = 6543
			elsif origin == 5 && destination == 8
				x = 7453
			elsif origin == 8 && destination == 3
				x = 4321
			elsif origin == 8 && destination == 5
				x = 6432
			elsif origin == 8 && destination == 4
				x = 4320
			elsif origin == 4 && destination == 3
				x = 5423
			elsif origin == 4 && destination == 8
				x = 2453
			elsif origin == 1 && destination == 9
				x = 5231
			elsif origin == 1 && destination == 3
				x = 6345
			elsif origin == 1 && destination == 8
				x = 9982
			elsif origin == 2 && destination == 6
				x = 8342
			elsif origin == 2 && destination == 5
				x = 7342
			elsif origin == 2 && destination == 1
				x = 2803
			end
			
			x * y / 9

	end





end
