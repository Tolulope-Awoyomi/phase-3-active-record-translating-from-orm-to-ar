require "active_record"

# Setup a database connection
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/test.sqlite3"
)

# set up a database connection
db = ActiveRecord::Base.connection

db.execute("DROP TABLE IF EXISTS dogs")
db.execute("CREATE TABLE dogs (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    breed TEXT
    );")

class Dog < ActiveRecord::Base
end
