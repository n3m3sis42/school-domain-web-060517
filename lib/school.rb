require "pry"

class School

	attr_accessor :roster

	def initialize(name)
		@roster = {}
	end 

	def add_student(student_name, grade)
		@roster[grade] = @roster.keys.include?(grade) ? roster[grade] << student_name : [student_name]
	end 

	def grade(grade)
		@roster[grade]
	end 

	def sort
		@roster.each{|grade, students| students.sort!}
	end 

end