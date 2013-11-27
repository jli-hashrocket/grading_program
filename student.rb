require 'pry'

class Student
  def initialize(name, grades=[])
    @name = name
    @grades = grades
  end

  def find_avg(grades)
    grades.inject(:+) / grades.size
  end

  def get_letter_grade
    avg = find_avg(@grades)
    final_grade  = FinalGrade.new(@name, avg)
    final_grade.letter_grade
  end
end
