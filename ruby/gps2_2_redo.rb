=begin
  
------PSUEDOCODE------------------

Method to create a list 
Input: string of items separated by spaces
Output: hash with items as keys, quantities as values
 - separate input into individual strings
 - feed these strings into a hash as keys 
    (default quantity: 1)
 - print the results (run another method here)


Method to add an item to the list 
Input: list, item name, optional quantity
Output: hash with new item and quantity added
 - 

Method to remove an item from the list
Input: list, item name, optional quantity
Output: 

Method to update the quantity of an item
Input: list, item name
Output: hash with the updated quantity

Method to print a list and make it look pretty
Input: list
Output: each item printed in English, exe. "List: 5 apples"
  
=end

#-------BUSINESS LOGIC-------------



def create_list(input)
  items = input.split(' ')
  list = {}
  items.each do |item|
    list.store(item, 1)
  end
  print_list(list)
end

def add_item(list, item, quantity)
  list.store(item, quantity)
  list 
end 

def delete_item(list, item)
  list.delete(item)
  list 
end 

def update_quantity(list, item, quantity)
  list[item] = quantity 
  list 
end 

def print_list(list_input)
  puts "List: "
  list_input.each do |item, quantity|
    puts "#{quantity} #{item}"
  end
end 


#------DRIVER CODE-----------------

new_list = create_list("lemonade tomatoes onions")
p update_quantity(new_list, "lemonade", 2)
p update_quantity(new_list, "tomatoes", 3)
p add_item(new_list, "ice cream", 4)
p delete_item(new_list, "lemonade")
p update_quantity(new_list, "ice cream", 1)

print_list(new_list)


