class ApplicationController < ActionController::Base
  before_action :authenticate_instructor!
  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      users_courses_path
    elsif resource.is_a?(Instructor)
      courses_path
    else
      super
    end
  end
end
