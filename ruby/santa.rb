class Santa
	attr_reader :age, :ethnicity
	attr_writer :gender


	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking[8] = reindeer
	end

end	


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "chimera", "asexual", "transgender male", "gender fluid", "dancer", "castrato"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Gorgon", "white", "mulatto", "Scottish-Canadian", "Arabian", "Italian"]
example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

for j in 0...santas.length
	santas[j].celebrate_birthday if j == 3
	santas[j].eat_milk_and_cookies("oatmeal raisin") if j == 5
	puts "Santa No. #{j} is #{santas[j].age} years old and of #{santas[j].ethnicity} background."
end


santas[1].get_mad_at("Vixen")
santas[6].gender = "castrato"