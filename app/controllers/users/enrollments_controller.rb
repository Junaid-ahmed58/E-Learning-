class Users::EnrollmentsController < UserBaseController
  def index; end

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
