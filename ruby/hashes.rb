=begin
  
Pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

Your keys should be symbols unless you find that you need a string for some reason.

PSEUDOCODE

- create hash with desired keys (values empty)
- collect values from user one key at a time
- convert each value to its appropriate data type
- store each value in its appropriate key
- print the hash back to the user
- ask user if changes need to be made (key, value) - not a loop
- update hash with changes
- print the hash back to the user and exit
  
=end

client_profile = {
  :name => "", #string
  :age => "", #integer
  :decor_theme => "", #string
  :budget => "", #integer
  :paid => "" #boolean
}

print "Client name: "
client_profile[:name] = gets.chomp

print "Client age: "
client_profile[:age] = gets.chomp.to_i

print "Decor theme: "
client_profile[:decor_theme] = gets.chomp

print "Budget (numerals only): "
client_profile[:budget] = gets.chomp.to_i

print "Is account paid? y/n: "
account_info = gets.chomp
  if account_info == "y"
    client_profile[:paid] = true
  elsif account_info == "n"
    client_profile[:paid] = false
  else
    client_profile[:paid] = nil 
  end

puts "New client profile: "
client_profile.each do |label, input|
  puts "#{label}: #{input}"
end

# puts "Enter a label to make changes, or type 'none' to quit."
# label = gets.chomp
#   if label == "none"
#     next
#   else
#     label.to_sym