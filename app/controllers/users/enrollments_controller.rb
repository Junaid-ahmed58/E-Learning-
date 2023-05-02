class Users::EnrollmentsController < UserBaseController
  def index; end

  def enroll
		course = Course.find(params[:id])
		if current_user.enrollments.create(course: course)
			flash[:success] = "You have sucessfully enrolled in course"
		else
			flash[:error] = "Failed to enroll in course"
  end
	 redirect_to users_courses_path
  end

  def create
		@enrollment = current_user.enrollments.new(course_id: params[:course_id])
	  if @enrollment.save
			flash[:notice] = 'You enrolled successfully in the course'
		else
			flash[:alert] = 'Course enrollment failed'
	  end
	  redirect_to users_courses_path
  end
end
