class Users::CoursesController < UserBaseController
  def index
		enrolled_courses = current_user.enrollments.pluck(:course_id)
		@courses = Course.where.not(id: enrolled_courses)
	end

  def in_progress
		enrolled_courses = current_user.enrollments.pluck(:course_id)
		@courses = Course.where(id: enrolled_courses)
	end

end
