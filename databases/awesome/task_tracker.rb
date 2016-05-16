# TASK TRACKER aka TO-DO LIST

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("tasks.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    content VARCHAR(255),
    catinfo VARCHAR(255),
    priority INT,
    done boolean
  )
SQL

# create a table (if it's not there already)
db.execute(create_table_cmd)

# VIEW THE ENTIRE CONTENTS OF THE TASKLIST
def view_tasklist(db)
	tasklist = db.execute("SELECT * FROM tasks")
	puts "Task" + " " * 10 + "Category" + " " * 10 + "Priority" + " " * 10 + "Done"
	tasklist.each do |task|
		puts "#{task['content']}         #{task['catinfo']}         #{task['priority']}"
	end
	puts ""
end

# VIEW ALL TASKS OF A SPECIFIC CATEGORY
def view_category(db, category)
	tasklist = db.execute("SELECT * FROM tasks WHERE catinfo=\"#{category}\"")
	puts "Task" + " " * 10 + "Category" + " " * 10 + "Priority" + " " * 10 + "Done"
	tasklist.each do |task|
		puts "#{task['content']}         #{task['catinfo']}         #{task['priority']}   -    #{("x" if (task['done']=='true'))}"
	end
	puts ""
end

# ADD A NEW TASK TO THE LIST
def create_task(db, content, catinfo, priority)
  db.execute("INSERT INTO tasks (content, catinfo, priority, done) VALUES (?, ?, ?, 'false')", [content, catinfo, priority])
  # All new tasks have a default 'done' value of false.
end

# REMOVE A TASK FROM THE LIST
def delete_task(db, content)
  db.execute("DELETE FROM tasks WHERE content=\"#{content}\"")
end
# end

# FOR A PARTICULAR TASK, CHANGE THE TASK DESCRIPTION
def update_content(db, orig_content, new_content)
	db.execute("UPDATE tasks SET content=\"#{new_content}\" WHERE content=\"#{orig_content}\"")
end

# FOR A PARTICULAR TASK, CHANGE THE TASK CATEGORY 
def update_category(db, content, new_catinfo)
	db.execute("UPDATE tasks SET catinfo=\"#{new_catinfo}\" WHERE content=\"#{content}\"")
end

# FOR A PARTICULAR TASK, CHANGE THE TASK PRIORITY
def update_priority(db, content, new_priority)
	unless new_priority < 0 || new_priority > 5
		db.execute("UPDATE tasks SET priority=\"#{new_priority}\" WHERE content=\"#{content}\"")
	else
		puts "Priority must be between 0 and 5."
	end
end


# DRIVER CODE
puts "WELCOME TO TASK TRACKER"
puts "Please enter a command:"
puts "Enter 'v' to see the whole tasklist"
puts "Enter 'c' to see tasks of a particular category"
puts "Enter 'n' to add a new task to the list"
puts "Enter 'r' to remove a task from the list"
puts "Enter 'ud' to update a task's description"
puts "Enter 'uc' to update a task's category"
puts "Enter 'up' to update a task's priority"
puts "Enter 'q' to quit Task Tracker"

until false
	entry = gets.chomp.to_s
	case entry
	when 'v'
		view_tasklist(db)

	when 'c'
		puts "please enter the category:"
		parameter = gets.chomp
		view_category(parameter)

	when 'n'
		puts "Enter the task description:"
		desc = gets.chomp
		puts "Enter the category:"
		cat = gets.chomp
		puts "Enter the priority:"
		priority = gets.chomp.to_i
		unless (priority < 0) || (priority > 5)
			create_task(db, desc, cat, priority)
		else
			puts "Priority must be between 0 and 5."
		end

	when 'r'
		puts "Enter the task description"
		parameter = gets.chomp
		delete_task(db, parameter)

	when 'ud'	
		puts "Enter the task description"
		desc = gets.chomp
		puts "Enter the new task description"
		new_desc = gets.chomp
		update_content(db, desc, new_desc)

	when 'uc'
		puts "Enter the task description"
		desc = gets.chomp
		puts "Enter the new category"
		new_cat = gets.chomp
		update_category(db, desc, new_cat)

	when 'up'
		puts "Enter the task description"
		desc = gets.chomp
		puts "Enter the new priority"
		priority = gets.chomp
		update_priority(db, desc, priority)
	when 'q'	
		break
	else 
		puts "Please make a valid entry:"
	end
end


#  TEST CODE
# view_category(db,"grocery")
# create_task(db, "get banana", "grocery", 1)
# view_category(db,"grocery")
# update_content(db, "get banana", "get 3 bananas")
# update_category(db, "get 3 bananas", "shopping")
# update_priority(db, "get 3 bananas", 7)
# view_tasklist(db)
# delete_task(db, "get 3 bananas")
# view_tasklist(db)