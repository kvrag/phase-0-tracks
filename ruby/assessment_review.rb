 # -  Creating a class
# -  Proper attribute assignments and class initialization
# -  Working with instance methods to handle both simple and complex logic
# -  Working with methods by both passing and not passing parameters
# -  Working with data structures and Ruby enumerables to create a dynamic workflow
# -  Proper data structure assignment and data access
# -  Working with instance variables and when/where to assign them
# -  `attr_*` methods
# -  Git workflow
# -  Spec writing
# -  Working with conditionals for logic and control flow
# -  Data types, like boolean and string
# -  Understanding Ruby’s implicit returns

#Practicing for Week 7 Assessment

class Person
  attr_reader :name
  attr_accessor :fridge, :grocery_basket
  
  def initialize(name, age)
    @name = name
    @age = age
    @fridge = []
    @grocery_basket = {}
  end
  
  #method for adding groceries to basket
  def add_groceries(grocery_store, items)
    @grocery_basket.store(grocery_store, items)
    @grocery_basket
  end
  
  def unload(grocery_store)
    @fridge.push(@grocery_basket[grocery_store])
    @fridge.flatten!
  end
  
  def eat_everything    
    @fridge.each do |food|
      p "#{@name} ate #{@fridge.delete(food)}!"
    end
  p "#{@name} is full now."
  end
  
end

new_person = Person.new("Ollie", 32)

p new_person.add_groceries("Mariano's", ["chicken", "barbeque_sauce", "rice"])
new_person.add_groceries("Whole Foods", ["pico_de_gallo", "avocado"])
p new_person.grocery_basket["Mariano's"][0] = "ribs"

p new_person.unload("Mariano's")
new_person.unload("Whole Foods")

p new_person.fridge

new_person.eat_everything   



