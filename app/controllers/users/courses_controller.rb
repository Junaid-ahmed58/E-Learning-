class Users::CoursesController < UserBaseController
  def index
   @courses = Course.where.not(id: current_user.enrollments.pluck(:course_id))
  end

  def in_progress
   @courses = current_user.courses
  end

  def reviews
    
  end
  
end
