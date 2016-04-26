class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num_o_woofs)
    puts "Woof" * num_o_woofs
  end
  
  def rollover
    puts "I rolled over! :) "
  end
  
  def dog_years(human_years)
    p human_years / 7
  end
  
  def fetch_beer(brand)
    puts "I brought you back a delicious #{brand}!"
  end
    
  def initialize
    puts "Initializing new puppy instance..."
  end
  
end    

trixie = Puppy.new
trixie.fetch("ball")
trixie.speak(7)
trixie.rollover
trixie.dog_years(42)
trixie.fetch_beer("Michelob Ultra")

class Horse
  
  def gallop(speed)
    puts "We're galloping at #{speed} mph!!!"
    speed
  end
  
  def trot(attitude, num_of_hoofbeats)
    puts "Clip Clop " * num_of_hoofbeats
    puts "Check out this #{attitude} trot!"
    num_of_hoofbeats
  end 
  
  def jump()
    num = rand
    if num > 0.5
      puts "Made it!"
    else
      puts "OH SHIT THAT HURT :( :( :("
    end
    num
  end
end

horsey = []

for i in 0..49
  horsey[i] = Horse.new
end

horsey.each do |horse|
  adj = ["sassy", "funky", "dainty", "goofy"]
  horse.gallop((75*rand).to_i)
  horse.trot(adj[(4*rand).to_i],(2 + (3 * rand).to_i))
  horse.jump
  puts "\n"
  
end