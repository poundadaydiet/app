class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  def authenticate_admin_user!
  authenticate_user! 
  unless current_user.admin?
    flash[:alert] = "That area is restricted to administrators only."
    redirect_to root_path 
  end
end
 
def current_admin_user
  return nil if user_signed_in? && !current_user.admin?
  current_user
end
end
