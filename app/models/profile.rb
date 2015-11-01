class Profile < ActiveRecord::Base
  belongs_to :user

  def male?
    self.gender == "Male"
  end

  def female?
    self.gender == "Female"
  end
end
