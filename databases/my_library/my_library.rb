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
while selection !='0'
  case selection
    when '1'
      tbl = tbls_data
      # puts "[1] type_of_book"
      # puts "[2] genre"
      # puts "[3] book_condition"
      # puts "[4] is_book_ready_for_donation"
      # puts "[0] done"
      case tbl
        when '1'
          puts "add to table type of book (i.e. children or adult);"
        when '2'
          puts "add to table genre"
        when '3'
          puts "add to book_condition table"
        when '4'
          puts "add to is_book_ready_for_donation"
        else
          puts "done adding to tables"
      end

    when '2'
      puts "book title:"
      title = gets.chomp
      add_new_book(db,title)
      puts "author:"
      author = gets.chomp
      add_author(db,author)

    when '3'
      added = true
      added = add_owner(db,"SAHAM")
      if added  
  	   print "owner added to book owners list."
      else
  	   print "owner already exists"
      end
  when '4'
      puts "Reader Information"
  when '5'
      puts "Wish List"
  end
  selection = option
end    

  puts "Thank you!"
    

