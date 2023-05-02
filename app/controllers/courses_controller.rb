class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :destroy, :show]

  def index
    @courses = current_instructor.courses
  end

  def show; end

  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(course_params)
    @course.instructor_id = current_instructor.id
    if @course.save    
      flash[:success] = "course successfully created"
      redirect_to courses_path
    else
      render 'new'
    end
  end
  
  def edit; end

  def update  
    if @course.update(course_params)
      redirect_to @course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy

    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :price, :instructor_id)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
