# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end
# Release 0: Add Routes
#write /contact get route 
get '/contact/:address' do
  address  = params[:address]
  "#{address} Chicago, IL 60000"
end

#write /great_job route that can take a person's name as aquery parameter and say "Good job, person's name"
get '/great_job/:id' do
  student = db.execute("SELECT * FROM students WHERE id = ?",[params[:id]])[0]
  #convert student to string and check if empty
  if !student.to_s.empty? 
     "Good job, #{student['name']}!"
   else
    "Good job!"
  end
end
#3. A route that uses rout parameters to add two numbers and respond with result
get '/add/:number1/:number2' do
  "#{params[:number1].to_i + params[:number2].to_i}"
end
#4 release 0

get '/search/:age' do
  student = db.execute("SELECT * FROM students WHERE age =?" , [params[:age]])[0]
  student.to_s
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  students = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  students.to_s

end

post "/testing" do
  @title = params[:title]
  "#{@title} we will see"
end
# Releas 1 : Research on your own
# Sinatra
# Rack
# Padrino
# Cuba
# Pakyow
#Releae 1.2 Sqls:
#mysql, Postgres
# WEB STACK is the collection of software required for web development.

