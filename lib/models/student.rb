class Student


  def save
    DB.execute("INSERT INTO students (name) VALUES(?)", name)
  end
end