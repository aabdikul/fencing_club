class StudentsController < ApplicationController

	def index 
		@students = Student.all
	end

	def new 
		@student = Student.new
	end

	def create

	end

	private 

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :weapon, :username)
	end

end
