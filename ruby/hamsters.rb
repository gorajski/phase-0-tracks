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

if candidate
	puts "Success!"
end

puts "What is the hamster's estimated age?"
age=gets.chomp
if age.length == 0
    age = nil
else 
    age = age.to_f
end



