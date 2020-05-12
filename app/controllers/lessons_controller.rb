class LessonsController < ApplicationController

	def new
		@lesson = Lesson.new
	end

	def create 
		@lesson = Lesson.new(lesson_params)
		byebug
	end

	def show
		@lesson = Lesson.find(params[:id])
	end

	private 

	def lesson_params
		params.require(:lesson).permit(:student_id, :coach_id, :date, :time)
	end

end
