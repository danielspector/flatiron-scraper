class Student

  attr_accessor :name

  def make_table
    DB.execute("CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
  end

  def save
    DB.execute("INSERT INTO students (name) VALUES ('#{name}')")
  end

end