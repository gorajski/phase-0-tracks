#-----------------Declarations-------------------#
require 'date'

#-------------Initialize Variables---------------#
i = 0
result = ""
output = ""

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

	puts "What year were you born?"
	app_yob = gets.chomp.to_i

	yob_age = (Date.today.year - app_yob)
	if yob_age == app_age || yob_age == (app_age + 1)
		age_matches = true
	else
		age_matches = false
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
	output = "Probably a vampire."
else
	output = "Probably not a vampire." if (age_matches && (wants_order || wants_insur))
	output = "Probably a vampire." unless (age_matches || (wants_order && wants_insur)) #Logically equivalent to "output = "Probably a vampire." if (!age_matches && (!wants_order || !wants_insur))"
	output = "Almost certainly a vampire." unless (age_matches || wants_order || wants_insur) #Logically equivalent to "output = "Almost certainly a vampire." if (!age_matches && !wants_order && !wants_insur)"
	output = "Definitely a vampire." if (app_name.upcase == "DRAKE CULA" || app_name.upcase == "TU FANG")
	output = "Results Inconclusive." if output.empty?
end
	puts output

	puts "\n"	#blank space between different iterations.
	result = ""	#clears contents of result variable for next iteration.

	#----------------Final Message-----------------#
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."		