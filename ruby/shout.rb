module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + " Yippeeeeeee!" + " :)"
  end
end

puts Shout.yell_angrily("Grrrrrr!")
puts Shout.yell_happily("Eureka!")