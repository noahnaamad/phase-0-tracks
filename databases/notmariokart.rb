require 'sqlite3'

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

def time_driving(name, guess)
	time_spent = 0
	right_guess = rand(6) + 1
	if (guess > 6 || guess < 1)
		puts "That's not from 1 to 6! Penalty!"
		time_spent = 9
	elsif guess == right_guess
		time_spent = 1
	elsif guess == 7 - right_guess
		time_spent = 7
	else
		time_spent = rand(4) + 2
	end

	if name == "you"
		puts "The right guess was #{right_guess}, and the time you spent driving this section is #{time_spent}"
	end
	time_spent
end

#add the time it took to complete that part of the course to the total time spent driving

def time_update(db, driver_id, time_spent)
	drivers = db.execute("SELECT * FROM drivers")
	add_time = "UPDATE drivers SET curr_time = curr_time + #{time_spent} WHERE drivers.id = #{driver_id}"
	db.execute(add_time)
	
end

#figure out who's in first, second, and third, and award points
def the_winners(db)
	driver_times = {}
	for i in 1..8 do
		their_id = db.execute("SELECT id FROM drivers WHERE drivers.id = #{i}")
		their_id = their_id[0][0]
		time_total = db.execute("SELECT curr_time FROM drivers WHERE drivers.id = #{i}")
		time_total = time_total[0][0]
		driver_times[their_id] = time_total
	end
	driver_times = driver_times.sort_by{|key, value| value}.to_h
	player_time = driver_times[8]
	puts "Your total time is #{player_time}"

	#I NEED TO FIND A WAY TO HANDLE TIES

	fastest_drivers = driver_times.keys
	driver0 = fastest_drivers[0]
	driver1 = fastest_drivers[1]
	driver2 = fastest_drivers[2]


	db.execute("UPDATE drivers SET points = points + 30 WHERE drivers.id = #{driver0}")
	db.execute("UPDATE drivers SET points = points + 22 WHERE drivers.id = #{driver1}")
	db.execute("UPDATE drivers SET points = points + 12 WHERE drivers.id = #{driver2}")
	#db.execute("UPDATE drivers SET curr_time=0")
end

#find the character ID given their name
def char_id_find(db, the_name)
	x = db.execute("SELECT id FROM drivers WHERE name = '#{the_name}'")
	x[0][0]
end

#######################################################
#The user interface begins!

puts "Hello!  Today we're going to play a racing game.  There are 5 sections of the race, and the first 3 to complete all 5 sections are awarded points.  Alright let's get started!"

5.times do
	puts "Guess an integer from 1 to 6"
	guess = gets.chomp
	guess = guess.to_i

	time_driv = time_driving("you", guess)
	time_update(db, 8, time_driv)

	characters.each do |character|
		if character != "you"
			time_driv = time_driving(character, 1)
			the_id = char_id_find(db, character)
			time_update(db, the_id, time_driv)
		end
	end
end

the_winners(db)

driver_points = {}
for i in 1..8 do
	their_id = db.execute("SELECT id FROM drivers WHERE drivers.id = #{i}")
	their_id = their_id[0][0]
	points = db.execute("SELECT points FROM drivers WHERE drivers.id = #{i}")
	points = points[0][0]
	driver_points[their_id] = points
end

driver_points = driver_points.sort_by{|key, value| -value}.to_h

#Report the status
driver_points.each do |driver,  their_points|
	driver_name = db.execute("SELECT name FROM drivers WHERE id = #{driver}")
	driver_name = driver_name[0][0]
	if driver_name == "you"
		puts "#{driver_name} have #{their_points} points!"
	else
		puts "#{driver_name} has #{their_points} points!"
	end
end

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

#driver code char_id_find
p char_id_find(db, "toad")
puts char_id_find(db, "yoshi")
=end