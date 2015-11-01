class ProfileCourtshipPreference < ActiveRecord::Base
  belongs_to :profile
  belongs_to :courtship_preference
end
