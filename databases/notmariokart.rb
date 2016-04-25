#TO DO
#REFACTOR ON LINE 137

require 'sqlite3'

#create database
db = SQLite3::Database.new("drivers.db")
#db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS drivers(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
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

if exists == [[0]]
	characters.each do |driver|
		create_driver(db, driver)
	end
end

def create_driver(db, their_name)
	db.execute("INSERT INTO drivers (name, points) VALUES (?, 0)", [their_name])
end

#create hash to store current time spent driving, add the time it took to complete that part of the course to the total time spent driving
curr_time = {}
characters.each do |character|
	curr_time[character] = 0
end


#now that the database and the local hash are initiated, some methods that are put to work during the game:

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

def time_update(driver, time_spent)
	curr_time[driver] = curr_time[driver] + time_spent
end

#figure out who's in first, second, and third, and award points.
def the_winners(db)
	#set up a few variables
	player_time = 0
	fastest_drivers = []
	fastest_times = []
	num_first_places = 0
	num_second_places = 0

	#sort the hash by who drove fastest
	curr_time = curr_time.sort_by{|key, value| value}.to_h
	
	#tell the player the length of their drive
	player_time = curr_time["you"]
	puts "Your total time for the race is #{player_time}"

	#Handle ties:
	#Find all players who had the shortest time
	fastest_drivers = curr_time.keys
	fastest_times = curr_time.values
	num_first_places = fastest_times.count{|x| x == (fastest_times[0])}

	#Add 30 points to everyone who had the fastest time
	for j in 1..num_first_places
		driver = fastest_drivers[j - 1]
		db.execute("UPDATE drivers SET points = points + 30 WHERE name = '#{driver}'")
	end
	
	#if there are fewer than 3 in first place, give everyone who had the second shortest time 22 points
	if num_first_places < 3
		fastest_times = fastest_times.drop(num_first_places)
		fastest_drivers = fastest_drivers.drop(num_first_places)
		num_second_places = fastest_times.count{|x| x == (fastest_times[0])}

		for k in 1..num_second_places
			driver = fastest_drivers[k -1]
			db.execute("UPDATE drivers SET points = points + 22 WHERE name = '#{driver}'")
		end
	end

	#if there are fewer than 3 in first and second place combined, give everyone who had the third shortest time 22 points
	if (num_first_places + num_second_places) < 3
		fastest_times = fastest_times.drop(num_second_places)
		fastest_drivers = fastest_drivers.drop(num_second_places)
		num_third_places = fastest_times.count{|x| x == (fastest_times[0])}

		for l in 1..num_third_places
			driver = fastest_drivers[l - 1]
			db.execute("UPDATE drivers SET points = points + 12 WHERE name = '#{driver}'")
		end
	end
end

#find the character ID given their name
def char_id_find(db, the_name)
	x = db.execute("SELECT id FROM drivers WHERE name = '#{the_name}'")
	x[0][0]
end

#######################################################
#The user interface begins!

puts "Hello!  Today we're going to play a racing game.  There are 5 sections of the race, and the first 3 drivers to complete all 5 sections are awarded points.  Alright let's get started!"

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
#refactor so it gives names!!!
for i in 1..8 do
	their_info = db.execute("SELECT name, points FROM drivers WHERE drivers.id = #{i}")
	#their_id = their_id[0][0]
	#driver_points[their_id] = points
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