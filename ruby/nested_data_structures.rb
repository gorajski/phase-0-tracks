refrigerator = {
	freezer: {
		top_shelf: [
			"frozen pizza",
			"peas",
			"broccoli"
		],
		bottom_shelf: [
			"tv dinner",
			"leftover chinese food"
		],
		door: [
			"ice pack"
		],
		ice_maker: {
			frozen_tray_count: 3,
			wet_tray_count: 3
		}
	},
	fridge: {
		top_shelf: [
			"yogurt",
			"orange juice",
			"milk"
		],
		middle_shelf: [
			"leftover meatloaf",
			"pumpernickel bread"
		],
		meat_drawer: {
			pastrami: "0.5 lb",
			corned_beef: "1.0 lb",
			munster: "0.5 lb"
		},
		veggie_drawer: {
			apples: 3,
			oranges: 5,
			grapefruit: 1
		},
		door: [
			"ketchup",
			"mustard",
			"1000 island dressing",
			"steak sauce"
		]
	}
}

puts "\nHere is what's on the fridge's middle shelf:"
p refrigerator[:fridge][:middle_shelf]

puts "\nChange the amount of pastrami to 1.0 lb:"
puts "initial pastrami: " + refrigerator[:fridge][:meat_drawer][:pastrami]
refrigerator[:fridge][:meat_drawer][:pastrami] = "1.0 lb"
puts "pastrami: " + refrigerator[:fridge][:meat_drawer][:pastrami]

puts "\nMove pumpernickel bread from middle shelf to top shelf using simple variable manipulation:"
refrigerator[:fridge][:top_shelf][3] = refrigerator[:fridge][:middle_shelf][1]
refrigerator[:fridge][:middle_shelf].delete_at(1)

puts " - Top Shelf - " 
puts refrigerator[:fridge][:top_shelf]
puts " - Middle Shelf - "
puts refrigerator[:fridge][:middle_shelf]

puts "\nMove pumpernickel bread back to middle shelf using Push and Pop only:"
refrigerator[:fridge][:middle_shelf].push(refrigerator[:fridge][:top_shelf].pop(1))

puts " - Top Shelf - " 
puts refrigerator[:fridge][:top_shelf]
puts " - Middle Shelf - "
puts refrigerator[:fridge][:middle_shelf]