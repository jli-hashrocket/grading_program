require 'pry'
require 'csv'

require_relative "grade_reader"
require_relative "final_grade"
require_relative "student"
require_relative "grade_summary"

file = "students.csv"
grade_reader = GradeReader.new(file)
grade_reader.parse
grade_reader.output_grades

summary = GradeSummary.new(grade_reader.students)
summary.class_avg
summary.class_deviation
summary.output_summary
