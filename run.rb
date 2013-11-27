require 'pry'
require 'csv'

require_relative "grade_reader"
require_relative "final_grade"
require_relative "student"
require_relative "grade_summary"

file = "students.csv"
grade_reader = GradeReader.new(file)
grade_reader.parse


