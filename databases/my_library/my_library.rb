#Main Program
# require gems
require 'sqlite3'
require_relative 'my_library_create_tbls'
require_relative 'my_library_methods'

db = create_db	#create database

#Introduction
puts "Welcome to my library"
puts "This will keep track of your books, readers, comments, donations, etc."

create_tbls(db)
selection = option
#add_new_book(db,"Hot Words for the SAT")
# puts "Would you like to [1] View your watchlist [2] Add a symbol to your watchlist [3] Remove a symbol from your watchlist [0] Exit from your watchlist."
# 		nav = gets.chomp
# 		puts "Invalid input, please enter a new input" if navigation_check(nav) == false
# 	end
# puts "Please choose from the following options:"
# puts "[1] book [2] owner [3] reader [4] wish list"
# option = gets.chomp
# puts
if selection == '1'
	add_new_book(db,"Building Web Apps with WordPress")
else
added = true
added = add_owner(db,"SAHAM")
if added  
	print "owner added to book owners list."
else
	print "owner already exists"
end
end
#update_owner(db,"Zahra Jablonsky",2)
#duplicate = check_duplicate_owner(db,"SAHAM")
#print duplicate
#db.execute("INSERT INTO book_owners (owner_name) VALUES ( 'SAHAM' )")