class LessonsController < ApplicationController


	def index
    	if params[:coach_id]
     	  @coach = Coach.find_by(id: params[:coach_id])
     	 	 if @coach
        		  @lessons = @coach.lessons
       		 elsif @coach.nil?
       		    flash[:alert] = "Coach not found."
          		redirect_to coaches_path
      		 end
   		else 
    		@lessons = Lesson.all 
      		render "index"
    	end
  	end


	def new
		@lesson = Lesson.new
	end

	def create 
		@lesson = Lesson.new(lesson_params)
		@lesson.save
		redirect_to lesson_path(@lesson)
	end

	def show
    	if params[:coach_id] && Coach.find_by(id: params[:coach_id])
      		@coach = Coach.find_by(id: params[:coach_id])
      		if @coach.lessons.find { |lesson| lesson.id == params[:id].to_i }
        		@lesson = Lesson.find(params[:id])
      		else
       		 	flash[:alert] = "Lesson not found."
        		redirect_to coach_lessons_path
      		end
    	else 
     		if params[:id] && Lesson.find(params[:id])
       		@lesson = Lesson.find(params[:id])
     	 	else 
       		redirect_to coaches_path
      		end
   		 end
   	end

 	def destroy
 		@student = Student.find_by(id: session[:student_id])
 		Lesson.find_by(id: params[:id]).destroy
 		redirect_to student_path(@student)
 	end

	private 

	def lesson_params
		params.require(:lesson).permit(:student_id, :coach_id, :date)
	end

end
