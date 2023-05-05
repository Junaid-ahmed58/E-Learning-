class Course < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	validates :price, presence: true
	belongs_to :instructor
	has_many :enrollments
	has_many :users, through: :enrollments
	has_many :user_course_reviews
	has_many :reviews, through: :user_course_reviews
end
