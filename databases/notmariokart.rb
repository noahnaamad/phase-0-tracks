require 'sqlite3'
require 'faker'

#create database
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS drivers(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		curr_time INT,
		points INT
	)
SQL

db.execute(create_table_cmd)

already_existed = <<-SQL
	SELECT COUNT(*) FROM drivers;
SQL
#if already_existed = 0  i will populate the DB with the characters, otherwise it is already populated and I shouldn't add the same characterss again!!

#db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

def create_driver(db, name, time, points)
	db.execute("INSERT INTO drivers (name, curr_time, points) VALUES (?, ?)", [name, time, points])
end


20.times do 
	create_kitten(db, Faker::Name.name, 0)
end



kittens = db.execute("SELECT * FROM kittens")
puts kittens

kittens.each do |kit|
	kit["age"] = (kit["age"] + 1)
end 

puts kittens