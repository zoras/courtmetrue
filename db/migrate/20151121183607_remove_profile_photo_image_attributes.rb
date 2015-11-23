class RemoveProfilePhotoImageAttributes < ActiveRecord::Migration
  def change
  	remove_column :profile_photos, :photo_uid
  	remove_column :profile_photos, :photo_name
  	remove_column :profile_photos, :photo_url
  end
end
