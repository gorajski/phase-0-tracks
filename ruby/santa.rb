#  - - Santa Class Definition - -  #
class Santa
	attr_reader :age, :ethnicity
	attr_writer :gender


	def initialize(gender,ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		puts @reindeer_ranking
	end

end	

#  - - Driver Code - -  #
def main()

#  - - Initialize Variables - -  #
	number_of_santas = 20000
	example_genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A", "chimera", "asexual", "transgender male", "dancer", "castrato"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Gorgon", "mulatto", "Scottish-Canadian", "Arabian", "Italian"]
	example_cookies = ["chocolate chip", "oatmeal raisin", "butterscotch", "biscotto", "Oreo", "Thin Mint"]

#  - - Initialize Santas - -  #
	santas = []
	for i in 0..number_of_santas
	 	santas << Santa.new(example_genders[11*rand], example_ethnicities[11*rand])
	end


#  - - Print Santas - -  #
	for i in 0..number_of_santas
		if i.even?						
			santas[i].speak				# The even Santas will say Ho ho ho! Happy Holidays.
			puts "says this #{santas[i].age} year-old, #{santas[i].ethnicity} Santa."		#announce age and ethnicity
			puts ""
		else 							
			santas[i].eat_milk_and_cookies(example_cookies[6*rand])				# The odd Santas will comment on their cookie.
			puts "says this #{santas[i].age} year-old, #{santas[i].ethnicity} Santa."		#announce age and ethnicity
			puts "" 
		end
	end

#  - - Original Driver Code - -  #
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A", "chimera", "asexual", "transgender male", "dancer", "castrato"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Gorgon", "mulatto", "Scottish-Canadian", "Arabian", "Italian"]
# example_genders.length.times do |i|
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# santas.each do |j,k|
# 	# p j
# 	j.celebrate_birthday if j == 3
# 	j.eat_milk_and_cookies("oatmeal raisin") if j == 5
# 	puts "This Santa is #{j.age} years old and of #{j.ethnicity} background."
# end

# santas[1].get_mad_at("Vixen")
# santas[6].gender = "castrato"

end

#  - - Run Driver Method Code - -  #
main