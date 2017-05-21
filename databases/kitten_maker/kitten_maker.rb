# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
# how do we take relational data (database that stores data in tables, columns, rows, primary keys, foreign keys) and use it in an object-oriented language like Ruby or Python, or scripting language like Java that is object-oriented?
# we want to use the data as arrays or hashes etc, where we can use it as an object and do things with it.
# Also: Object Relational Management - sorta the same idea.

# require gems
# gem: prewritten ruby that another programmer has written
require 'sqlite3' # bridges the gap between ruby program and database
require 'faker' # lets you create fake data for testing or populating
# To install a gem: in terminal, `gem install [name of gem]`

# create SQLite3 database
db = SQLite3::Database.new("kittens.db") # creates and stores a new database
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

