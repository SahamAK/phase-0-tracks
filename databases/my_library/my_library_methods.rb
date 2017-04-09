# Create the database for my library

def create_db
	db = SQLite3::Database.new("my_library.db")
	db.results_as_hash = true
	return db
end 

# Create my_books table within the my_library database
def create_my_books(db)
  create_my_books_cmd = <<-SQL
	 CREATE TABLE IF NOT EXISTS my_books(
    book_id INTEGER PRIMARY KEY,
    book_title VARCHAR(255),
    owner_id INTEGER,
    author_id INTEGER,
    type_id INTEGER,
    genre_id INTEGER,
    reader_id INTEGER,
    donated_id INTEGER,
    condition_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES book_owner(owner_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (type_id) REFERENCES type_of_book(type_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
    FOREIGN KEY (reader_id) REFERENCES book_readers(reader_id),
    FOREIGN KEY (donated_id) REFERENCES is_book_ready_for_donation(donated_id),
    FOREIGN KEY (condition_id) REFERENCES book_condition(condition_id)
    )
  SQL
  #create my_books table
  db.execute(create_my_books_cmd)
end
#create authors table within the database
def create_authors(db)
  create_authors_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS authors(
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(255)
    )
  SQL
  #create authors table
  db.execute(create_authors_cmd)
end
#create book_owners table within database
def create_book_owners(db)
  create_book_owners_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS book_owners(
    owner_id INTEGER PRIMARY KEY,
    owner_name VARCHAR(255)
    )
  SQL
  #create book_owners table 
  db.execute(create_book_owners_cmd)
end

#create type_of_book table within database
def create_type_of_book(db)
  create_type_of_book_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS type_of_book(
    type_id INTEGER PRIMARY KEY,
    type_name VARCHAR(255)
    )
  SQL
  #create type_of_book table
  db.execute(create_type_of_book_cmd)
end

#create book_condition table within database
def create_book_condition(db)
  create_book_condition_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS book_condition(
    condition_id INTEGER PRIMARY KEY,
    condition_desc text(20)
    )
  SQL
  #create book_condition table
  db.execute(create_book_condition)
end

#create genre table within the db
def create_genre(db)
  create_genre_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS genre(
    genre_id INTEGER PRIMARY KEY,
    genre_name VARCHAR(255)
    )
  SQL
  #create table genre
  db.execute(create_genre_cmd)
end
#create list of readers table within db
def create_book_readers(db)
  create_book_readers_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS book_readers(
    reader_id INTEGER PRIMARY KEY,
    reader_name VARCHAR(255)
    )
  SQL
  #create the table
  db.execute(create_book_readers_cmd)
end
#create readers comments table within db
def create_reader_comments(db)
  create_reader_comments_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS reader_comments(
    comment_id INTEGER PRIMARY KEY,
    reader_id INTEGER,
    book_id INTEGER,
    FOREIGN KEY (reader_id) REFERENCES book_readers(reader_id),
    FOREIGN KEY (book_id) REFERENCES my_books(book_id),
    comments VARCHAR(255)
    )
  SQL
  #create reader comments table
  db.execute(create_reader_comments_cmd)
end
#create books wish list table within db
def create_wish_list(db)
  create_wish_list_cmd = <<-SQL
   CREATE TABLE IF NOT EXISTS wish_list(
    wish_id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    reader_id INTEGER,
    FOREIGN KEY (reader_id) REFERENCES book_readers(reader_id)
    )
  SQL
  #create wish list table
  db.execute(create_wish_list_cmd)
end