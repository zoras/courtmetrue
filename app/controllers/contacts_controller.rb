class ContactsController < ApplicationController

  def process_form
    Rails.logger.debug "DEBUG: params are #{params}"
    # send email to owner!!!!@
    flash[:notice] = "Sucessfully sent from #{params[:contact][:name]}"
    redirect_to root_path
  end

end
