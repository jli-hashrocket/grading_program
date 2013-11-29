require 'pry'

class Student
  def initialize(name = '',grades=[])
    @name = name
    @grades = grades
  end

  def grade
    @grades = @grades.map do |grade|
      grade.to_i
    end
  end

  def find_avg
    @avg = (@grades.inject(:+))/@grades.size
    puts "\n#{@name} average is #{@avg}"
  end

  def get_letter_grade
   final_grade  = FinalGrade.new(@name, @avg)
   final_grade.letter_grade
  end
end
