#Gather Input--------------------------------------------------------

puts "What is the hamster's name?"
hamster_name=gets.chomp

puts "What is the hamster's volume level (1-10)?"
volume=gets.chomp.to_i
until volume >= 1 && volume <= 10 
puts "Invalid input, please enter a number between 1 and 10."
volume=gets.chomp.to_i
end

puts "What is the hamster's fur color?"
fur_color=gets.chomp

puts "Is the hamster a good candidate for adoption (y/n)?"

candidate=gets.chomp
until candidate.capitalize == "Y" || candidate.capitalize == "N"
puts "Invalid input, please enter either 'y' or 'n'."
candidate=gets.chomp
end

if candidate.capitalize == "Y"
	candidate = true
else
	candidate = false
end

puts "What is the hamster's estimated age?"
age=gets.chomp
if age.length == 0
    age = nil
else 
    age = age.to_f
end

#Output Data---------------------------------------------------

puts "This hamster's name is #{hamster_name}."
puts "#{hamster_name}'s volume level is #{volume}."
puts "This hamster's fur is colored #{fur_color}."

if candidate
	puts "This hamster is a good candidate for adoption!"
else
	puts "This hamster is not a good candidate for adoption."
end

if age == nil
	puts "The hamster's age is unknown."
else
	puts "This hamster's age is #{age}."
end