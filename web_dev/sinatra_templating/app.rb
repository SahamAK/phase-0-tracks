# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  # @campus = db.execute("SELECT id, name FROM students WHERE campus = ?", [params['campus']])
  # p @campus.to_s
  # erb :prt_tbl
end

get '/students/location' do
	erb :select_campus
end

post '/students' do
  #db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  @campus = db.execute("SELECT id, name FROM students WHERE campus = ?", [params['campus']])
  p @campus.to_s
  erb :prt_tbl
end
#print a list of student in the selected campus