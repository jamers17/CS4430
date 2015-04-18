class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :Teams, :loses, :losses
  end
end
