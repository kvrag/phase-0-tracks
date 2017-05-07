module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end 

  def self.yell_happily(words)
    words + "!" + " WOOHOO!!!" 
  end 
end 

p Shout.yell_angrily("For heaven's sake")

p Shout.yell_happily("We did it") 