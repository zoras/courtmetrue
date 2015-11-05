class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
  	change_column :profiles, :weight, :string
  end
end
