class CourseMailer < ApplicationMailer
 
  def course_enrolled
   @user = params[:user]
   @course = params[:course]
   @greeting = "Hi"
   mail to: @user.email, subject: "New course enrolled"
  end
end
