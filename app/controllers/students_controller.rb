class StudentsController < ApplicationController
	include StudentsHelper
	before_action :find_student, only: [:edit, :update]

	def index 
		@students = Student.all
	end

	def new 
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
			if @student.save
				session[:student_id] = @student.id
				redirect_to student_path(@student)
			else
				redirect_to new_student_path
			end
	end

	def show 
		if logged_in? 
			@student = Student.find_by(id: params[:id])
		else 
			redirect_to root_path
		end
	end

	def edit 
	end

	def update 
		@student.update(student_params)
		redirect_to student_path(@student)
	end


	private 

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :weapon, :username, :password)
	end

	def find_student
		@student = Student.find_by(id: params[:id])
	end

end
