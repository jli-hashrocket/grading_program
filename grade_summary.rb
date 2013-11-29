require 'pry'

class GradeSummary
  def initialize(students, all_grades = [], deviation_arr = [])
    @students = students
    @all_grades = all_grades
    @deviation_arr = deviation_arr
  end

  def class_avg
    @students.each do |student|
      @all_grades << student.grade
    end
    @all_grades = @all_grades.flatten
    students_num = @all_grades.length
    @avg_class = @all_grades.inject(:+) / students_num
  end

  def class_deviation
    @all_grades.each do |grade|
      diff = (grade - @avg_class) ** 2
      @deviation_arr << diff
    end
    @deviation_arr = @deviation_arr.flatten
    deviation_length = @deviation_arr.length
    @std_deviation = Math.sqrt(@deviation_arr.inject(:+) / deviation_length)
  end

  def output_summary
    puts "\n==================Class Summary================="
    puts "The average score of the class is: #{@avg_class}"
    puts "The lowest score of the class is: #{@all_grades.min}"
    puts "The highest score of the class is: #{@all_grades.max}"
    puts "The standard deviation of the class is: #{@std_deviation.round(1)} "
  end
end
