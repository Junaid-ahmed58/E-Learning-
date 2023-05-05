class CreateUserCourseReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_course_reviews do |t|

      t.timestamps
    end
  end
end
