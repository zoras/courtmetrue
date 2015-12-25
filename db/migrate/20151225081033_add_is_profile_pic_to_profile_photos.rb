class AddIsProfilePicToProfilePhotos < ActiveRecord::Migration
  def change
    add_column :profile_photos, :is_profile_pic, :boolean
  end
end
