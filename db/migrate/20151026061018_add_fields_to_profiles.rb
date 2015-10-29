class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :dob, :date
    add_column :profiles, :country, :string
    add_column :profiles, :state, :string
    add_column :profiles, :city, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :religion, :string
    add_column :profiles, :ethnicity, :string
    add_column :profiles, :language, :string
    add_column :profiles, :occupation, :string
    add_column :profiles, :income, :string
    add_column :profiles, :household, :string
    add_column :profiles, :height, :integer
    add_column :profiles, :weight, :integer
    add_column :profiles, :bodytype, :string
    add_column :profiles, :smoker, :string
    add_column :profiles, :drinker, :string
    add_column :profiles, :status, :string
    add_column :profiles, :children, :integer
    add_column :profiles, :wantkids, :boolean
    add_column :profiles, :selfbio, :string
    add_column :profiles, :ideal, :string
    add_column :profiles, :tandc, :boolean
  end
end
