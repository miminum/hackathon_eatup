class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    cuisine_path
  end

  def after_sign_up_path_for(resource)
    new_profile_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  
end
