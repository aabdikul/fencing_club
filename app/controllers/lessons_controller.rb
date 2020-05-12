class LessonsController < ApplicationController

	def new
		@lesson = Lesson.new
	end

	def create 
		@lesson = Lesson.new(lesson_params)
		@lesson.save
		redirect_to lesson_path(@lesson)
	end

	def show
		@lesson = Lesson.find_by(id: params[:id])
 	end

	private 

	def lesson_params
		params.require(:lesson).permit(:student_id, :coach_id, :date)
	end

end
