class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
	end

	def show
		@lesson = Lesson.find(params[:id])
	end

	def new
		@lesson = Lesson.new
	end

	def create
		@lesson = @course.lessons.new(lesson_params)
		if @lesson.save
			redirect_to course_lesson_path(@course, @lesson)
    else
    	render :new
    end
	end

	def edit
		@lesson = Lesson.find(params[:id])
	end

	def update
		if @lesson.update(lesson_params)
      redirect_to course_lesson_path(@course, @lesson)
    else
      render :edit
    end
	end

	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.destroy
		redirect_to @course
	end
	
	private
	def set_course_and_lesson
		@course = Course.find(params[:course_id])
		@lesson = @course.lessons.find(params[:id])
	end
	
	def lesson_params
		params.require(:lesson).permit(:name, :description, :content)
	end
end
