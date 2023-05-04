class Users::ReviewsController < UserBaseController
  def index
    @reviews = Review.all
  end
  
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to reviews_path, notice: "Review added successfully"
    else
      render :index
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end