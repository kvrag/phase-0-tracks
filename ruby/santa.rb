class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
    @age = 0 
  end 

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
  end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    something with @reindeer_ranking
  end

  # setter methods
  def gender=(new_gender)
    @gender = new_gender
  end

  # getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end


santas = []
santas << Santa.new("female", "latinx")
santas << Santa.new("male", "black")
santas << Santa.new("agender", "white")
santas << Santa.new("gender fluid", "Pacific islander")

p santas 



#-------TEST CODE-------------------------
# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("M&M cookie")

# santa1 = Santa.new("female", "latina")
# santa1.about 
#-----------------------------------------