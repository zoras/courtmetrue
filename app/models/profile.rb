class Profile < ActiveRecord::Base
  belongs_to :user

  def male?
    self.gender == "Male"
  end

  def female?
    self.gender == "Female"
  end

  def finish_basic_info?
	  if 	self.name.blank? ||
				self.age.blank? ||
		  	self.dob.blank? ||
		  	self.country.blank? ||
		  	self.state.blank? ||
		  	self.city.blank? ||
		  	self.gender.blank? ||
		  	self.status.blank?
  		false
  	else
  		true
  	end
  end

  def finish_personal_info?
  	
  end

  def finish_additional_info?
  	
  end

  def finished_profile?
  	return finish_basic_info? && finish_personal_info? && finish_additional_info? ? true : false
  end
end
