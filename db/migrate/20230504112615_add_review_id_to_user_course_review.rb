class AddReviewIdToUserCourseReview < ActiveRecord::Migration[7.0]
  def change
    add_column :user_course_reviews, :review_id, :integer
  end
end
