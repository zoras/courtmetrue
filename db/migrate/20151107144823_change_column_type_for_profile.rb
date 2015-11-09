class ChangeColumnTypeForProfile < ActiveRecord::Migration
  def change
  	change_column :profiles, :children, :string
  	change_column :profiles, :wantkids, :string
  end
end
