# Design and build a nested data structure to represent a real-world construct.

# Chosen construct: Bookshelf full of shelves full of books (and other ephemera)

# First step: Declare the outside container (the bookshelf made up of books)
# Second step: Decide what kind of structure is best for nested data
# Third step: Access and manipulate nested data

bookshelf = {
  :top_shelf => [
    'bamboo plant', 
    'handcrafted basket'
    ],
  :middle_shelf => [
    'David Copperfield', 
    'A Handmaid\'s Tale', 
    ['HTML and CSS', 'Javascript and JQuery'],
    'Learn to Program'
    ],
  :bottom_shelf => [
    ['Chicago Manual of Style', 'AP Stylebook', 'Copyeditor\'s Handbook'], 
    'Calvin and Hobbes Treasury'
    ],
  :underneath => [
    'shoe', 
    'cat toy', 
    'dust bunny'
    ],
}

# Print 'handcrafted basket'
p bookshelf[:top_shelf][1]

# Print 'AP Stylebook' 
p bookshelf[:bottom_shelf][0][1]

# Add a sleeping cat to the top shelf
bookshelf[:top_shelf].push('sleeping cat')
p bookshelf[:top_shelf]

# Reverse the order of the copyediting books
bookshelf[:bottom_shelf][0].reverse!
p bookshelf[:bottom_shelf][0]

# The plant died, and the cat decided to sleep somewhere else
bookshelf[:top_shelf].delete_at(2)
bookshelf[:top_shelf].delete_at(0)  
# Is there a way to combine these two lines? (0, 2) and (0 && 2) didn't work.
p bookshelf[:top_shelf] 