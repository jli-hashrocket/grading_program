require 'pry'

class GradeReader
  attr_accessor :students
  def initialize(file,students=[],lines=[])
    @file = file
    @students = students
    @lines = lines
  end

  def parse
    CSV.foreach(@file, :headers=>true) do |line|
      @lines << line
    end
    @lines.each do |student|
      @ind_score = []
      i = 1
      student.each do |key, value|
        @ind_score << student[i]
        @ind_score.pop if student[i] == nil
        @ind_student = Student.new(student[0], @ind_score)
        i += 1
      end
        @students << @ind_student
    end
  end

  def output_grades
    @students.each do |each_student|
      each_student.grade
      each_student.find_avg
      each_student.get_letter_grade
    end
  end

  def summary
    @students.each do |student|
      binding.pry
    end
  end
end
