class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :Teams, :loses, :losses
    rename_column :Teams, :overTimeLoses, :overTimeLosses
    rename_column :Teams, :shootOutLoses, :shootOutLosses
  end
end
