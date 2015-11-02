class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    profile_path(:start_profile)
  end

  def after_sign_in_path_for(resource)
    root_path
  end

end
