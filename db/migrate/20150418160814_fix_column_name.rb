class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :teams, :shortHandedGoalsFor, :shorthandedGoalsFor
  end
end
