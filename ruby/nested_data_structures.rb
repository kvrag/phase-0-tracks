# Design and build a nested data structure to represent a real-world construct.

# Chosen construct: Bookshelf full of shelves full of books (and other ephemera)

# First step: Declare the outside container (the bookshelf made up of books)
# Second step: Decide what kind of structure is best for nested data
# Third step: Access and manipulate nested data

bookshelf = {
  :top_shelf => ['bamboo plant', 'handcrafted basket'],
  :middle_shelf => ['David Copperfield', 'A Handmaid\'s Tale', 'HTML and CSS', 'Learn to Program'],
  :bottom_shelf => ['Chicago Manual of Style', 'AP Stylebook', 'Copyeditor\'s Handbook', 'Calvin and Hobbes Treasury'],
  :underneath => ['shoe', 'cat toy', 'dust bunny'],
}
