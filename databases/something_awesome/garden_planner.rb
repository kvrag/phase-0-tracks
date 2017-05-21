# GARDEN PLANNER
# Users input preferences, and the program
# - creates
# - prints
# - stores
# their new garden data

# BUSINESS LOGIC ---------------------------

require 'sqlite3'

db = SQLite3::Database.new('garden.db')
db.results_as_hash = true 


def select_veg(db, season_id)
  db.execute("SELECT vegetables.name, vegetables.planting_depth, vegetables.min_days_maturity, watering_freq.frequency FROM vegetables JOIN watering_freq ON vegetables.watering_id = watering_freq.id WHERE season_id=?", [season_id])
end



# USER INTERFACE ---------------------------

puts "Let's plan your garden!" 
puts "What would you like to name your garden? No special characters."

garden_name = gets.chomp

puts "What season would you like to sow your crop? (1-5)"
puts "1. Winter (January - May)"
puts "2. Early Spring (February - April)"
puts "3. Spring (March - May)"
puts "4. Late Spring (May - June)"
puts "5. Through Summer (February - October)"

season = gets.chomp.to_i
new_garden = [] 
new_garden.push(select_veg(db, season)) 

puts "You should plant..."
new_garden.each do |plant1, plant2|
  puts "- #{plant1["name"]}"
end 

puts "Would you like to see some planting tips? y/n"
answer = gets.chomp 

if answer == "y"
  new_garden.each do |plant1, plant2|
    puts "For #{plant1["name"]}:"
    puts "Plant seeds #{plant1["planting_depth"]} inches deep."
    puts "Water the plants #{(plant1["frequency"].downcase)}."
    puts "Veggies should be ready in #{plant1["min_days_maturity"]} days!"
  end 
  puts " "
  puts "Have fun planting #{garden_name}!"
else
  puts "Okay! Have fun planting #{garden_name}."
end 


# DRIVER CODE ------------------------------

# kv_garden = []
# kv_garden.push(select_veg(db, 3)) 
# p kv_garden

# puts db.execute("SELECT * FROM vegetables;") 