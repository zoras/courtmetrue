class AddExpectationsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :expectations, :text
  end
end
