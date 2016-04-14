#-------------Initialize Variables---------------#
i = 0
result = ""

#-----------Request Processing Loops-------------#
puts "Enter the number of employees you would like process:"
emp_num = gets.chomp.to_i

#-----------------Set Up Loop--------------------#
while i < emp_num do
	i += 1

	#----------------Collect Name----------------#
	puts "What is your name?"
	app_name = gets.chomp.to_s



	#----------------Collect Age------_----------#
	puts "How old are you?"
	app_age = gets.chomp.to_i

	if app_age < 108
		young_enough = true
	else
		young_enough = false
	end


	#-----------Collect Cafeteria Order-----------#
	puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
	app_order = gets.chomp.upcase
	until app_order == "Y" || app_order == "YES" || app_order == "N" || app_order == "NO"
		puts "Invalid entry, please enter YES or NO"
		app_order = gets.chomp.upcase
	end
	case app_order
	when "Y", "YES"
		wants_order = true
	else
		wants_order = false
	end

	#--------Collect Insurance Preference---------#
	puts "Would you like to enroll in the company's health insurance?"
	app_enroll = gets.chomp.upcase
	until app_enroll == "Y" || app_enroll == "YES" || app_enroll == "N" || app_enroll == "NO"
		puts "Invalid entry, please enter YES or NO"
		app_enroll = gets.chomp.upcase
	end
	case app_enroll
	when "Y", "YES"
		wants_insur = true
	else
		wants_insur = false
	end

	#-------------Check For Allergies-------------#
	puts "Please enter any allergies you may have, one at a time, followed by ENTER.  When finished, please type done followed by ENTER."
	until result.upcase == "DONE" || result.upcase == "SUNSHINE"
		result = gets.chomp
	end

	#--------------Evaluate Results---------------#
	if result.upcase == "SUNSHINE"
		puts "Probably a vampire."
	else
		if young_enough && (wants_order || wants_insur)
			puts "Probably not a vampire."
		elsif (!young_enough && (!wants_order || !wants_insur)) && !(!young_enough && !wants_order && !wants_insur)
			puts "Probably a vampire."
		elsif !young_enough && !wants_order && !wants_insur
			puts "Almost certainly a vampire."
		elsif app_name.upcase == "DRAKE CULA" || app_name.upcase == "TU FANG"
			puts "Definitely a vampire."
		else
			puts "Results Inconclusive."
		end
	end
	puts ""		#blank space between different iterations.
	result = ""	#clears contents of result variable for next iteration.

	#----------------Final Message-----------------#
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

		