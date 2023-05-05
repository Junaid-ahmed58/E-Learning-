class Users::CoursesController < UserBaseController
  def index
   @courses = Course.where.not(id: current_user.enrollments.pluck(:course_id))
  end

  def in_progress
   @courses = current_user.courses
  end

  def show
    @course = Course.find(params[:id])
    @reviews = Review.where.not(id: current_user.reviews.pluck(:review_id))
    @review = @course.reviews.build()
  end

  def reviews;  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @review.destroy
    redirect_to users_course_path, notice: 'Review deleted successfully.'
  end

end
