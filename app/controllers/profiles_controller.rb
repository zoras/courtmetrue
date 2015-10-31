class ProfilesController < ApplicationController
  include Wicked::Wizard
  steps :start_profile, :basic_info, :personal_info, :aditional_info, :finalize_profile

  before_action :get_user
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def show
    unless @profile
      @profile = @user.build_profile
      @profile.save
    end
    @current_step = params[:id]
    render_wizard
  end
  
  def update
    @profile.update(profile_params)
    render_wizard @profile
  end

  private
    def get_user
      @user = current_user
    end

    def set_profile
      @profile = @user.profile
    end

    def profile_params
      params.require(:profile).permit(:age, :name, :dob, :country, :state, :city,
                                      :religion, :language, :ethnicity, :occupation, :income, :household,
                                      :height, :weight, :bodytype, :smoker, :drinker, :children, :wantkids, :selfbio, :ideal, :tandc)
    end
end
