class CreateProfileCourtshipPreferences < ActiveRecord::Migration
  def change
    create_table :profile_courtship_preferences do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :courtship_preference, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
