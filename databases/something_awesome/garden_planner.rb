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


garden = <<-SQL
  CREATE TABLE IF NOT EXISTS garden_name(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

def create_garden(garden_name)
  db.execute(garden)
end 




# USER INTERFACE ---------------------------


# DRIVER CODE ------------------------------

# puts db.execute("SELECT * FROM vegetables;") 