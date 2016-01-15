module SalesmenHelper
	              
	def ports_select_option
		a = []
		PortManager.all.each do |x|
			a.push([x.location, x.id])
		end
		a
	end

	def cargo_type_name
		[
	      ['Apples', 1],
	      ['Bananas', 2],
	      ['Watermelon', 3],
	      ['Grapes', 4],
	      ['Strawberries', 5],
	      ['Oranges', 6],
	      ['Peaches', 7],
	      ['Kiwis', 8],
	      ['Pineapples', 9],
	      ['Raspberries', 10]
	  ]
	end

	def cargo_weight
		[
	      ['Freezer', 1],
	      ['Regular', 2],
		]
	end



end
