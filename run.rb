require 'pry'
require 'csv'

require_relative "grade_reader"
require_relative "final_grade"
require_relative "student"
require_relative "grade_summary"

file = "students.csv"
report = "class_resport.csv"
grade_reader = GradeReader.new(file, report)
grade_reader.parse
grade_reader.output_grades
grade_reader.send_to_file

summary = GradeSummary.new(grade_reader.students)
summary.class_avg
summary.class_deviation
summary.output_summary
