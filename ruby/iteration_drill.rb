# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |supply|
  puts " * #{supply}"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

zombie_apocalypse_supplies = ["batteries", "binoculars", "CB radio", "compass", "hatchet", "rations", "shotgun", "water jug"]  
# Hit a wall / ran outta time with this one. But hey, I didn't use a built-in method!


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def supply_search(supply_list, item)
index = 0
  while index < supply_list.length
    if supply_list[index] == item
      puts "IT\'S HERE!"
      break
    elsif
      puts "Not here... "
    end
  index += 1
  end 
end

puts "What item are you checking for?"
input = gets.chomp
supply_search(zombie_apocalypse_supplies, input)


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

zombie_apocalypse_supplies = zombie_apocalypse_supplies - ["shotgun", "CB radio", "batteries"]


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

combined_supplies = zombie_apocalypse_supplies | other_survivor_supplies



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
  puts " * #{animal} - #{year}"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year| 
  if year >= 2000
    extinct_animals.delete(animal)
  end
end
# p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, year| 
  extinct_animals[animal] = year - 3
end
# p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each_key do |animal, year| 
  if animal == "Andean Cat" 
    puts "Andean Cat is extinct."
    break
  elsif animal == "Dodo"
    puts "Dodo is extinct."
    break
  elsif animal == "Saiga Antelope"
    puts "Saiga Antelope is extinct."
    break
  else
    puts "Not extinct."
  end
end


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

not_extinct = extinct_animals.select {|key, value| ["Passenger Pigeon"].include?(key) }
extinct_animals = Hash[extinct_animals.to_a - not_extinct.to_a] 

# p extinct_animals 
p not_extinct.flatten 
