# CLASS Car
# ATTRIBUTES location (integer), light status (off, lights, brights), and sunroof (open closed)
# METHODS initialize, forward, toggle_lights, toggle_roof, display_car
# 
# initiallize Method
# Sets up a new car with location = 0, lights off and sunroof closed
# Initializes "display strings"
# 
# forward Method
# Accepts a parameter for car location
# Ensure parameter is not out of range 
# Add spacer string to front end of each "display string"
# 
# reverse Method
# Accepts a parameter for car location
# Ensure parameter is not out of range 
# truncate front end of each "display string" based parameter
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
	attr_accessor :location, :light_status, :roof_status

	def initialize
		@location = 0
		@light_status = 0
		@roof_status = false
		@limit = 25
		@line1 = "      _________"
		@line2 = "    //   |||   \\\     "
		@line3 = " __//____|||____\\\____  "
		@line4 = "| _|      |       _  ||"
		@line5 = "|/ \\______|______/ \\_||"
		@line6 = " \\_/             \\_/"
	end

	def forward(delta)
		if @location + delta >= @limit		#Detect and handle edge condition
			delta = @limit - @location
			@location = @limit				#Update location
			puts "WARNING - This is as far as the car can go:"
		else
			@location += delta 				#Update location
		end
			delta_str = " " * delta
			@line1 = delta_str + @line1		#prepend blank string to display strings to move car forward
			@line2 = delta_str + @line2
			@line3 = delta_str + @line3
			@line4 = delta_str + @line4
			@line5 = delta_str + @line5
			@line6 = delta_str + @line6

	end

	def reverse(delta)
		if @location - delta < 0 			#Detect and handle edge condition
			delta = @location
			@location = 0					#Update location
			puts "WARNING - This is as far as the car can go:"
		else
			@location = @location - delta 	#Update location
		end
		@line1 = @line1[delta..@line1.length]	#erase blank string to display strings to move car back
		@line2 = @line2[delta..@line2.length]
		@line3 = @line3[delta..@line3.length]
		@line4 = @line4[delta..@line4.length]
		@line5 = @line5[delta..@line5.length]
		@line6 = @line6[delta..@line6.length]
	end

	def toggle_lights
		if @light_status == 0		# If lights off
			@light_status += 1
			@line4 = (" " * @location) + "| _|      |       _  ||==========================="	# turn lights on
		elsif @light_status == 1	# If lights on
			@light_status += 1
			@line3 = (" " * @location) + " __//____|||____\\\____  ---------------------------"	# turn headbeams on
			@line5 = (" " * @location) + "|/ \\______|______/ \\_||---------------------------"
		else
			@light_status = 0		#if headbeams on
			@line3 = (" " * @location) + " __//____|||____\\\____  "	#turn lights off
			@line4 = (" " * @location) + "| _|      |       _  ||"
			@line5 = (" " * @location) + "|/ \\______|______/ \\_||"
		end
	end

	def toggle_roof
		unless @roof_status			#If roof is closed
			@line1 = (" " * @location) + "      ___     _"	#open it
		else
			@line1 = (" " * @location) + "      _________"	#otherwise close it"
		end
		@roof_status = !@roof_status	#toggle flag
	end

	def display_car			#output current car visualization
		puts @line1
		puts @line2
		puts @line3
		puts @line4
		puts @line5
		puts @line6
	end

end

#  - - User Interface - -  #
def main
	puts "INSTRUCTIONS:  Use the following commands to operate the car:"
	puts "f: Move the car forward."
	puts "r: Move the car in reverse."
	puts "l: Toggle the lights."
	puts "s: Open and close the sunroof."
	puts "x: To exit."

	sedan = Car.new

	until false
		input = gets.chomp
		case input 
		when "f"
			puts "How many feet forward should we move?"
			feet = gets.chomp.to_i
			sedan.forward(feet)
			sedan.display_car
		when "r"
			puts "How many feet forward should we move?"
			feet = gets.chomp.to_i
			sedan.reverse(feet)
			sedan.display_car			
		when "l"
			sedan.toggle_lights
			sedan.display_car			
		when "s"
			sedan.toggle_roof
			sedan.display_car	
			if sedan.roof_status
				puts "Roof open."
			else
				puts "Roof closed."
			end
		when "x"
			break
		end
	end
end

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