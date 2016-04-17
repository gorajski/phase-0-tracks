# encryption pseudocode - read the password string
# grab length of password - put in variable
# for each letter do the following:
# grab letter
# increment the letter
# add it to the deck

def encrypt(password)
	i = 0
	deck = ""
	len = password.length

	for i in 0...len
		deck += password[i].next
		if password[i] == "z"
		deck = deck.chomp("a")
		end
		if password[i] == "Z"
		deck = deck.chomp("A")
		end
	end
	return deck
end

# decryption pseudocode - read the password string
# grab length of password - put in variable
# for each letter do the following:
# grab letter
# find alphabet index number
# decrement alphabet index number by one
# translate new index number back into alphabet string letter
# add it to the deck


def decrypt(password)
	i = 0
	deck = ""
	len = password.length
	alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

	for i in 0...len
		pass_index = password[i]
		str_num = alphabet.index(pass_index) - 1
		deck += alphabet[str_num]
		if password[i] == "a"
			deck = deck.chomp("Z")
			deck += "z"
		end
		if password[i] == "A"
			deck = deck.chomp("z")
			deck += "Z"
		end
	end
return deck
end

# decrypt(encrypt("swordfish"))
# The nested method call works because ruby assesses from right to left and fills in variables as it works it's way left.

puts "Please enter your password."
password = gets.chomp

puts "Would you like your password to be encrypted or decrypted?"
answer = gets.chomp

input_valid = false
until input_valid == true

if answer == "encrypted"
	password = encrypt(password)
	input_valid = true
elsif answer == "decrypted"
	password = decrypt(password)
	input_valid = true
else
	puts "Please write 'encrypted' or 'decrypted'. Thank you!"
	answer = gets.chomp
end
end
puts "Your #{answer} password is #{password}."