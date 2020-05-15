class SessionsController < ApplicationController 

	def new
	end

	def create
		student = Student.find_by(username: params[:student][:username])
		if student && student.authenticate(params[:password])
			session[:student_id] = student.id
			@student = student
			redirect_to student_path(student)
		else 
			redirect_to login_path
		end
	end

	def destroy
		session.delete :student_id
		redirect_to root_path
	end


end