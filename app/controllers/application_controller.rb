class ApplicationController < ActionController::Base
	include StudentsHelper

	def home 
		render "layouts/home"
	end

end
