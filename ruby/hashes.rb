# Define an empty hash
# print information requests
# store information entries
# when all information entries are stored, ask if any updates are required
# if no information updates are required, then print the hash
# otherwise, request the which information needs to be collected
# collect the information
# select the correct key
# determine the data type of the new information's field
# convert the information to the proper data type
# store the new value at the key
# print hash


client = {
	"name" => "",
	"age" => 0,
	"child_count" => 0,
	"decor_theme" => "",
	"likes_classic" => true,
	"likes_retro" => true,
	"likes_artdeco" => true
}

puts "Please enter client's name:"
client["name"] = gets.chomp
puts "Please enter age:"
client["age"] = gets.chomp.to_i
puts "Please enter number of children:"
client["child_count"] = gets.chomp.to_i
puts "Please enter desired decor theme:"
client["decor_theme"] = gets.chomp.to_s
puts "Does the client like classic style?"
client["likes_classic"] = gets.chomp == "yes"
puts "Does the client like retro style?"
client["likes_retro"] = gets.chomp == "yes"
puts "Does the client like art deco style?"
client["likes_artdeco"] = gets.chomp == "yes"

puts "If you would like to update a field, please enter one of the field names or otherwise just enter 'done'."
entry_choice = gets.chomp
unless entry_choice == "done"
	puts "Please enter the value for #{entry_choice}:"
	if client[entry_choice].class == Fixnum
		client[entry_choice] = gets.chomp.to_i
	elsif client[entry_choice].class == String
		client[entry_choice] = gets.chomp.to_s
	else
		client[entry_choice] = gets.chomp == "yes"
	end
end

puts "\n"
puts client