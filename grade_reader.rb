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
        binding.pry
        @ind_student = Student.new(student[i], @ind_score)
        binding.pry
        i += 1
      end
        @students << @ind_student
    end
    @students.each do |each_student|
      each_student.grade
      each_student.find_avg
      each_student.get_letter_grade
    end
  end
end
