
class FinalGrade
  def initialize(name, average, letter_grade = nil)
    @name = name
    @average = average
    @letter_grade = letter_grade
  end



  def letter_grade
    @letter_grade = "A" if @average >= 90
    @letter_grade = "B" if @average >= 80 && @average < 90
    @letter_grade = "C" if @average >= 70 && @average < 80
    @letter_grade = "D" if @average >= 60 && @average < 70
    @letter_grade = "F" if @average < 60
    print "#{@name}'s final grade is: #{@letter_grade}\n"
    @letter_grade
  end
end
