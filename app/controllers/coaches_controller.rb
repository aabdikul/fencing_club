class CoachesController < ApplicationController
helper_method :params
before_action :find_coach, only: [:show]

	def index
		@student = Student.find_by(id: session[:student_id])
		if !params[:years].blank? && params[:region] == ""
			@coaches = Coach.master(params[:years])
		elsif !params[:region].blank? && params[:years] == ""
			@coaches = Coach.area(params[:region])
		elsif params[:region] && params[:years]
			@coaches = Coach.area_master(params[:years], params[:region])
		else
			@coaches = Coach.all
		end
	end

	def show 
		if session[:student_id]
		else 
			redirect_to coaches_path
		end
	end

	private 

	def find_coach
		@coach = Coach.find_by(id: params[:id])
	end

end
