# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db2 = SQLite3::Database.new("houses.db")
db2.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/houses' do
	@houses = db2.execute("SELECT * FROM houses")
	erb :houses
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add points to a house

post '/houses' do
	houses = db2.execute("SELECT * FROM houses")
	points_current = db2.execute("SELECT points FROM houses WHERE name=?", params['name'])[0][0]  #Create hash of just the point value of desired house and then select the value out of the only row in the hash
	points_delta = params['points'].to_i		#Take the entered value as the desired number of points to be added to the team total.
	points_new = points_current + points_delta		#Create new total point value for desired team
	db2.execute("UPDATE houses SET points=? WHERE name=?", points_new, params['name'])		#Insert new point value into table 
	redirect '/students/houses'
end