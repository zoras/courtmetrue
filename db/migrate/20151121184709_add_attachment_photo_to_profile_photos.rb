class AddAttachmentPhotoToProfilePhotos < ActiveRecord::Migration
  def self.up
    change_table :profile_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :profile_photos, :photo
  end
end
