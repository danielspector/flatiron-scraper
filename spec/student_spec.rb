require_relative 'spec_helper'


describe "Student" do

  before(:each) do
    DB.execute("CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)")
end

after(:each) do
  DB.execute("DROP TABLE students")
end

  it "has a name" do
    student = Student.new
    student.name = "Alex"

    expect(student.name).to eq("Alex")
  end

  it "needs to add itself to our database" do
    student = Student.new
    student.name = "Alex"
    student.save

    results = DB.execute("SELECT name FROM students WHERE name = 'Alex' ")
    expect(results[0][0]).to eq('Alex')
  end
end

describe "Student Scraper" do

  it "pulled students into a document" do
    student_scraper = StudentScraper.new("http://www.google.com")
    expect(student_scraper.class).to eq("Nokogiri::HTML::Document")
  end

  xit "pulled a proper string" do
    scraped_name = StudentScraper.scrape_name
  end

end