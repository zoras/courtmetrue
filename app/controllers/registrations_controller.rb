class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    page_path('about')
  end

  def after_sign_up_path_for(resource)
    page_path('about')
  end

  def after_sign_in_path_for(resource)
    page_path('about')
  end

end
