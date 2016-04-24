require 'sqlite3'
#require 'faker'

#create database
db = SQLite3::Database.new("drivers.db")
#db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS drivers(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		curr_time INT,
		points INT
	)
SQL

db.execute(create_table_cmd)

#populate table with other players if it's empty, otherwise leave it alone
#if already_existed = 0  i will populate the DB with the characters, otherwise it is already populated and I shouldn't add the same characterss again!!
already_existed = <<-SQL
	SELECT COUNT(*) FROM drivers
SQL

exists = db.execute(already_existed)

#actually populate database
characters = ["bowser", "toad", "peach", "yoshi", "mario", "wario", "luigi", "you"]


def create_driver(db, their_name)
	db.execute("INSERT INTO drivers (name, curr_time, points) VALUES (?, 0, 0)", [their_name])
end

if exists == [[0]]
	characters.each do |driver|
		create_driver(db, driver)
	end
end

#make the drivers more acccessible
the_drivers = db.execute("SELECT * FROM drivers")

#calculate the time it took the driver to complete this part of the course
#they guess the roll of a die -- if their guess faces up they go fast, if their guess faces down they go slow, otherwise they go medium.

def time_driving(guess)
	time_spent = 0
	right_guess = rand(6) + 1
	if guess == right_guess
		time_spent = 1
	elsif guess == 7 - right_guess
		time_spent = 5
	else
		time_spent = 3
	end
	puts "right guess was #{right_guess} and time spent is #{time_spent}"
end

#add the time it took to complete that part of the course to the total time spent driving

def time_update(db, driver_id, time_spent)
	drivers = db.execute("SELECT * FROM drivers")
	add_time = "UPDATE drivers SET curr_time = curr_time + #{time_spent} WHERE drivers.id = #{driver_id}"
	db.execute(add_time)
	
end

#create hash of drivers and their total time
driver_times = <<-SQL
	SELECT drivers.name, drivers.curr_time FROM drivers
SQL
x = db.execute(driver_times)
puts x

=begin
#driver code create and populate table - but only once!!
the_drivers = db.execute("SELECT * FROM drivers")
puts "exists is #{exists}"
puts the_drivers


#driver code time_driving
time_driving(5)
time_driving(2)
time_driving(5)
time_driving(2)
time_driving(5)
time_driving(2)
time_driving(5)
time_driving(2)

#driver code time_update
time_update(db, 1, 5)
time_update(db, 1, 5)
time_update(db, 3, 1)
time_update(db, 5, 3)
puts the_drivers


20.times do 
	create_kitten(db, Faker::Name.name, 0)
end



kittens = db.execute("SELECT * FROM kittens")
puts kittens

kittens.each do |kit|
	kit["age"] = (kit["age"] + 1)
end 

puts kittens
=end