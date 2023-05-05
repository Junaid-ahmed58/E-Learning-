class Users::ReviewsController < UserBaseController
  def index
    @reviews = Review.where.not(id: current_user.reviews.pluck(:review_id))
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(review_params)
   if @review.save
    flash[:notice] = 'Thanks for Review'
    redirect_to users_course_reviews_path
   else
    flash[:alert] = 'Review not added'
   end
   
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comments, :course_id)
  end

end
