class UserCourseReview < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :review
end
