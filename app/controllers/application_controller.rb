class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_current_user_id
  def set_current_user_id
    session[:user_id] = current_user.id
  end
end
