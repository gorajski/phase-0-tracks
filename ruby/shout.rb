#  - - Define Modules - -  #
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + " Hey Eh Yeh Eh!" + " :)"
  end
end

#  - - Define Classes - -  #
class Seventies_bands
	include Shout
end

class Eighties_bands
	include Shout
end

#  - - Main Method - -  #
def main
	tears_for_fears = Eighties_bands.new
	otis_day_and_the_knights = Seventies_bands.new

	puts "Tears for Fears says:"
	puts tears_for_fears.yell_angrily("C'mon - I'm talking to you")
	puts "Otis Day and the Knights say:"
	puts otis_day_and_the_knights.yell_happily("A little bit louder now")

end

#  - - Execute Program - -  #
main



#  - - Old Code - -  #
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + " Yippeeeeeee!" + " :)"
#   end
# end

# puts Shout.yell_angrily("Grrrrrr!")
# puts Shout.yell_happily("Eureka!")