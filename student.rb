
class Student
  attr_accessor :name
  def initialize(name = '',grades=[], avg = 0, letter_grade = '')
    @name = name
    @grades = grades
    @avg = avg
    @letter_grade = letter_grade
  end

  def grade
    @grades = @grades.map do |grade|
      grade.to_f.round(1)
    end
  end

  def find_avg
    @avg = (@grades.inject(:+))/@grades.size
    puts "\n#{@name} average is #{@avg}"
    @avg
  end

  def get_letter_grade
   @letter_grade  = FinalGrade.new(@name, @avg).letter_grade
  end
end
