class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :user_course_reviews
  has_many :reviews, through: :user_course_reviews
end
