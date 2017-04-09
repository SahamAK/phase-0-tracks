# Create the database for my library


#this will check for a duplicate row in a table
# def check_duplicate_owner(db,value)
#   duplicate_length = db.execute("Select * from book_owners where owner_name = ?",value).length
#   while duplicate_length > 0
#     db.execute('DELETE FROM book_owners WHERE owner_name =?', value)
#     duplicate_length -= 1
#     return true
#   else 
#     return false 
#   end 
# end 

#This will add a new book to the my_books
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

def option
  input = nil
  while choice_check(input) == false
    puts "[1] book [2] owner [3] reader [4] wish list [0] end"

    #puts "Would you like to [1] View your watchlist [2] Add a symbol to your watchlist [3] Remove a symbol from your watchlist [0] Exit from your watchlist."
    input = gets.chomp
    puts "Invalid selection. Please enter a valid selection" if choice_check(input) == false
  end
  return input
end

def choice_check(input)
  options = ['1','2','3','4','0']
  return options.include?(input) 
end