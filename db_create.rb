require 'sqlite3'

db = SQLite3::Database.new "taskList.db"
db.execute "CREATE TABLE data (id INTEGER PRIMARY KEY, name TEXT NOT NULL, description TEXT, date TEXT);"

db.close if db
