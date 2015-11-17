class CreateProfilePhotos < ActiveRecord::Migration
  def change
    create_table :profile_photos do |t|
      t.references :profile, index: true, foreign_key: true
      t.string :photo_uid
      t.string :photo_name
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
