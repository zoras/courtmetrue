class CreateProfilePhotos < ActiveRecord::Migration
  def change
    create_table :profile_photos do |t|
      t.integer :profile_id
      t.string :photo_uid
      t.string :photo_name
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
