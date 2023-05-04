class Review < ApplicationRecord
  has_many :users
  has_many :user_course_reviews
  has_many :courses, through: :user_course_reviews
end
