class CourseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.course_mailer.course_enrolled.subject
  #
  def course_enrolled
		@user = params[:user]
		@course = params[:course]
    @greeting = "Hi"
    mail to: @user.email, subject: "New course enrolled"
  end
end
