class StudentScraper
  def initialize(url)
    @doc = Nokogiri::HTML(open(url))
  end

  def scrape
    scrape_name
    # create_instance
  end

  def scrape_name
    @student_name = @doc.css("div.page-title h4.ib_main_header").text
    puts @student_name
  end

  def create_instance
    # @student = Student.new
    # @student.name = @student_name
    # @student.save
    # @student
  end
end