class Users::CoursesController < ApplicationController
	skip_before_action :authenticate_instructor!

	def index
		@courses = Course.all
	end
  
end