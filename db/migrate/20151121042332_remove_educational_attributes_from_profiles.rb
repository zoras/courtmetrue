class RemoveEducationalAttributesFromProfiles < ActiveRecord::Migration
  def change
  	remove_column :profiles, :graduate_degree
		remove_column :profiles, :bachelors_degree
		remove_column :profiles, :vocational
		remove_column :profiles, :high_school
  end
end
