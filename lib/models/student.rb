class Student
  
DB = SQLite3::Database.new “students.db”
DB.execute(“CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)”)

attr_accessor :name

  
  
end