# - -  Pseudocode  - -
# Read in a name.  Store in string.
# Split the name string into an array of two.
# Swap the array's first element with the second element.
# Recombine the two elements into a single string.
# Use a lookup table to swap all vowels in the string with the next alphabetical vowel. Store value.
# Use a lookup table to swap all consonants in the string with the next alphabetical consonant. Store value.

#------------Initialize Variables------------#
	entered = coded = ""	# entered is original name entered.  coded is the processed name.
	name_list = {}			# name_list is data structure where name/codename data is stored.

until false					
	#----------Collect and Process Name----------------#
	puts "Psst...enter your name or 'quit':"
	entered = gets.chomp.to_s
	break if entered == "quit"	# Exit loop when "quit" is entered.
	coded = entered.split(" ").reverse.join(" ")  # Reverse last name and first name.
	coded = coded.tr("aeiouAEIOU", "eiouaEIOUA")  # Advance vowels.
	coded = coded.tr("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ", "cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB")  # Advance consonants.
	name_list[entered] = coded # Add final processed codename to data structure.
end

name_list.each { |orig_name, code_name| puts "'#{code_name}' is in fact '#{orig_name}'."}  # Print out final name decoder list.