module WorkOrdersHelper
	def boatname(x)
		boat.find_by_id(x.id).name.last
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
