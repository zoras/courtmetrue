class ProfilePhoto < ActiveRecord::Base
  dragonfly_accessor :photo
  belongs_to :profile
end
