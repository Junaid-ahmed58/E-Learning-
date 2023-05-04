class UserBaseController < ApplicationController
  skip_before_action :authenticate_instructor!
end
