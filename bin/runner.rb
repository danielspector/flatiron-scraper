require_relative "../config/environment"

DB = SQLite3::Database.new "students.db"
Student.make_table

index_students = Nokogiri::HTML(open("http://students.flatironschool.com"))

student_link = index_students.css("li.home-blog-post div.blog-title h3 a")
new_index = student_link.map do |link|
  link["href"]
end

new_index.each do |url|
  student_url = StudentScraper.new("http://students.flatironschool.com/#{url}")
  student_url.scrape
end