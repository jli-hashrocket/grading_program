require 'pry'

class Student
  def initialize(name,grades=[])
    @name = name
    @grades = grades
  end

  def grade
    grades = @grades.map do |grade|
      grade.to_i
    end

    avg = (grades.inject(:+))/grades.size
  end
end
