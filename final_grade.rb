require 'pry'

class FinalGrade
  def initialize(name, average)
    @name = name
    @average = average
  end

  def letter_grade
    print "#{@name}'s final grade is:"
    puts "A" if @average >= 90
    puts "B" if @average >= 80 && @average < 90
    puts "C" if @average >= 70 && @average < 80
    puts "D" if @average >= 60 && @average < 70
    puts "F" if @average < 60
  end
end
