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


end
