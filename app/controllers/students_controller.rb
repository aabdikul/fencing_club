class StudentsController < ApplicationController

	def index 
		@students = Student.all
	end

	def new 
		@student = Student.new
	end

	def create
		@student = Student.create(student_params)
		redirect_to student_path(@student)
	end

	def show 
		@student = Student.find_by(id: params[:id])
	end

	private 

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :weapon, :username, :password)
	end

end
