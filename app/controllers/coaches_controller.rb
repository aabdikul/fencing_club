class CoachesController < ApplicationController
helper_method :params

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
		@coach = Coach.find_by(id: params[:id])
	end

end
