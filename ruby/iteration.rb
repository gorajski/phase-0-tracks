puts " - 5.4 Release 1 - "

# DECLARE VARIABLES
muppets = ["kermit", "piggy", "fozzie", "gonzo", "henrietta"]
muppet_cap = []
muppet_upper = []
meals = {breakfast: "pancake", lunch: "sandwich", snack: "M&Ms", dinner: "roastbeef"}
new_meal = {}
puts "Original data:"

p muppets
p muppet_cap
p meals
p new_meal

#iterate through the array muppets with .each
#.each will not modify muppets
muppets.each do |muppet|
  muppet_cap << muppet.capitalize
  puts "Introducing #{muppet_cap.last}!"
end

puts "\nmuppets after .each call:"
p muppets
puts "\nmuppet_cap after .each call:"
p muppet_cap

# #iterate through the array muppets with .map!
# #.map! will modify muppets
muppets.map! do |muppet|
  muppet.upcase
end

puts "\nmuppets after .map! call:"
p muppets

#iterate through the hash meals with .each
#.each will not modify

meals.each do |meal,food|
  new_meal[meal] = food
  if meal == :snack
    new_meal[meal] = "apple"   
  end
end  

puts "\nmeals after .each call:"
p new_meal

puts "\n - 5.4 Release 2 -"
puts "Original Data:"
p array_o_fun = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p hash_o_matic = {1 => "Washington", 2 => "Adams", 3 => "Jefferson", 4 => "Madison", 5 => "Monroe", 6 => "Quincy Adams"}

# Deletes numbers less than 7.
p array_o_fun.delete_if { |num| num >= 7 }  
# Selects the value of the array at the specified index.
p array_o_fun.fetch(1) { |num| puts "The array does not have #{num} elements!" }
# Selects any values from the array that are less than 6
p array_o_fun.take_while { |num| num < 6 }

# Deletes President elements that are not odd
p hash_o_matic.keep_if { |pres_num| pres_num.odd? }  
# Selects President key values that are less than or equal to 2
p hash_o_matic.select {|pres_num, name| pres_num <= 2}
# Selects the key of the hash at the specified index.
p array_o_fun.fetch(1) { |pres_num, name| puts "There is no record of President No. #{pres_num} here." }