class StudentsController < ApplicationController
	include StudentsHelper

	def index 
		@students = Student.all
	end

	def new 
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
			if @student.save!
				session[:student_id] = @student.id
				redirect_to student_path(@student)
			else 
				redirect_to root_path
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
		@student = Student.find_by(id: params[:id])
	end

	def update 
		@student = Student.find_by(id: params[:id])
		@student.username = params[:student][:username]
		@student.weapon = params[:student][:weapon]
		@student.save
		redirect_to student_path(@student)
	end


	private 

	def student_params
		params.require(:student).permit(:first_name, :last_name, :age, :weapon, :username, :password)
	end

end
