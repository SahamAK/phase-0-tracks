#My_library methods are group here.
#Work in progress

#This method will add a new book to the my_books
def add_new_book(db,book_name)
  db.execute('INSERT INTO my_books (book_title) VALUES (?)', book_name)
end
#Add book owner
def add_owner(db,owner)
  if db.execute("SELECT * FROM book_owners WHERE owner_name = ?",owner).length > 0 
    return false
  else
    db.execute('INSERT INTO book_owners (owner_name) VALUES (?)', owner)
    return true
  end
end

def update_owner(db,new_owner,id)
  db.execute("UPDATE book_owners SET owner_name = ? WHERE owner_id = ?",new_owner,id)
end
#add author to tbl
def add_author(db,author)
  db.execute('INSERT INTO authors (author_name) VALUES (?)', author)
end


# This will give the user an option from the main menu and will continue executing until they enter 0 to end program
def option
  input = nil
  while choice_check(input) == false
    puts "[1] update tables [2] book [3] owner [4] reader [5] wish list [0] end"

    #puts "Would you like to [1] View your watchlist [2] Add a symbol to your watchlist [3] Remove a symbol from your watchlist [0] Exit from your watchlist."
    input = gets.chomp
    puts "Invalid selection. Please enter a valid selection" if choice_check(input) == false
  end
  return input
end

def choice_check(input)
  options = ['1','2','3','4','5','0']
  return options.include?(input) 
end

#This is the submenu for adding details to the following tables:
#book_condition,type_of_book,is_book_ready_for_donation, genre
def tbls_data
  input = nil
  while choice_tbl(input) == false
    puts "Please pick a table to update:"
    puts "[1] type_of_book"
    puts "[2] genre"
    puts "[3] book_condition"
    puts "[4] is_book_ready_for_donation"
    puts "[0] done"
    input = gets.chomp
    puts "Invalid selection. Please enter a valid selection" if choice_tbl(input) == false
  end
  return input
end

def choice_tbl(input)
  options = ['1','2','3','4','0']
  return options.include?(input) 
end