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

db.execute("INSERT INTO book_owners (owner_name) VALUES ( 'SAHAM' )")