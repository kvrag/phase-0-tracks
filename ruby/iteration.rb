# Release 0

def robot(arms, legs)
  limbs = arms + legs
  puts limbs
  yield
end

robot(12, 24) { puts "That's a lot of limbs!" } 


# Release 1

age_of_robots = [1, 25, 13, 43, 5, 610]

robot_features = {
  :eyes => 2,
  :mouths => 3,
  :arms => 12,
  :legs => 24,
  :buttons => 100
}

age_of_robots.each do |age|
  puts "This robot is #{age} today!"
end

robot_features.each do |feature, number|
  puts "This robot has a whopping #{number} #{feature}."
end

age_of_robots.map! do |age|
  puts age
  age.next 
end

p age_of_robots 


# Release 2

# Part 1

age_of_robots.delete_if {|age| age > 30}
puts age_of_robots 

robot_features.delete_if {|feature, number| number > 30}
puts robot_features

# Part 2

age_of_robots.keep_if {|age| age < 20 }
puts age_of_robots

robot_features.keep_if {|feature, number| feature == :arms or feature == :legs}
puts robot_features 

# Part 3

odd_age_of_robots = age_of_robots.select {|age| age.even? }
puts odd_age_of_robots

robot_features[:processors] = 8
robot_features[:pockets] = 100

best_robot_features = robot_features.select {|feature, number| number > 50}
puts best_robot_features

# Part 4

new_age_of_robots = age_of_robots.drop_while {|age| age < 10}
puts new_age_of_robots 

robot_features.reject! {|feature, number| number < 10}
puts robot_features

