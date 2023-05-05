class AddUserIdToUserCourseReview < ActiveRecord::Migration[7.0]
  def change
    add_column :user_course_reviews, :user_id, :integer
  end
end
