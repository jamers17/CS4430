class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :teams, :loses, :losses
    rename_column :teams, :overTimeLoses, :overTimeLosses
    rename_column :teams, :shootOutLoses, :shootOutLosses
  end
end
