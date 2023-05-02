class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :enrollments
	has_many :courses, through: :enrollments

	# def add_course(course)
	# 	enrollments.create(course: course)
	# end
end
