class ChangeHeightTypeInProfiles < ActiveRecord::Migration
  def change
  	change_column :profiles, :height, :string
  end
end
