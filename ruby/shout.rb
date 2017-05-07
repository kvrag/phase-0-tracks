#----STANDALONE VERSION--------------------

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end 

#   def self.yell_happily(words)
#     words + "!" + " WOOHOO!!!" 
#   end 
# end 

# p Shout.yell_angrily("For heaven's sake")

# p Shout.yell_happily("We did it") 


#----MIXIN VERSION---------------------------

module Shout
  def yell_angrily(words)
    words + "!!!" + " :(" 
  end

  def yell_happily(words)
    words + "!" + " WOOHOO!!"
  end 
end 

class Sibling
  include Shout 
end

class Coworker
  include Shout 
end

brother = Sibling.new 
p brother.yell_angrily("Stop using my crayons")
p brother.yell_happily("I got a new bike")

cubicle_mate = Coworker.new 
p cubicle_mate.yell_angrily("This place stinks") 
p cubicle_mate.yell_happily("I quit") 