class AddGraduateDegreeAndBachelorsDegreeAndVocationalAndHighSchoolAndProfileHeadingToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :graduate_degree, :string
    add_column :profiles, :bachelors_degree, :string
    add_column :profiles, :vocational, :string
    add_column :profiles, :high_school, :string
    add_column :profiles, :profile_heading, :string
  end
end
