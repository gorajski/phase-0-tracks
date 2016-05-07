# CLASS Car
# ATTRIBUTES location (integer), light status (off, lights, brights), and sunroof (open closed)
# METHODS initialize, toggle_lights, toggle_roof, display_car
# 
# initiallize Method
# Sets up a new car with location = 0, lights off and sunroof closed
# Initializes "display strings"
# 
# toggle_lights Method
# if lights off 
#   make lights on
#   swap appropriate display string
# if light on then make brights on
#   make brights on
#   swap appropriate display strings
# if brights on then make lights off
#   make lights off
#   swap appropriate display strings
# 
# toggle_roof Method
# if roof closed
#   set roof open
#   swap roof display string
# if roof open
#   set roof closed
#   swap roof display string
# 
# display_car
#   puts current "display strings"
#

class Car
	attr_accessor :location, :key_status
	attr_reader :fuel

	def initialize
		@location = 1
		@key_status = true
		@fuel = 0.0
	end

	def is_tank_full?
		@fuel <= 0.9
	end

	def add_fuel(percent)
		@fuel += percent
	end

	def display_car		
		puts "The car in parking space #{@location} has:"
		puts "A #{fuel} full tank of gas."
		if key_status
			puts "Has keys in the car."
		else
			puts "Does not have keys in the car."
		end
	end

end

#  - - User Interface - -  #
def main

#  - - Initialize Variables  - - #
	i = 0
	car_lot = []

	until false
		puts "Would you like to add a car to the Infinite Parking Lot? y/n"
		input = gets.chomp
		break if input == "n"
		car_lot[i] = Car.new
		puts "Please enter the row the car will be parked in:"
		car_lot[i].location = gets.chomp.to_i
		puts "Are the keys in the car? y/n"
		car_lot[i].key_status = (gets.chomp == "y")
		puts "How much fuel by % is in the car?"
		car_lot[i].add_fuel((gets.chomp.to_f / 100))
		puts "Would you like to add fuel? y/n"
		if (gets.chomp == "y")
			puts "Please enter the percentage of fuel added:"
			car_lot[i].add_fuel((gets.chomp.to_f / 100))
		end

		i += 1
	end

	car_lot.each { |this_car| this_car.display_car }

end

#  - - Execute Code - -  #
main

# - - Old Driver Code - -  #
# new_car = Car.new
# new_car.display_car
# new_car.forward(16)
# new_car.display_car
# new_car.forward(10)
# new_car.display_car
# new_car.reverse(12)
# new_car.display_car
# new_car.toggle_lights
# new_car.display_car
# new_car.toggle_lights
# new_car.display_car
# new_car.toggle_lights
# new_car.display_car
# new_car.toggle_lights
# new_car.display_car
# new_car.toggle_roof
# new_car.display_car
# new_car.toggle_roof
# new_car.display_car
