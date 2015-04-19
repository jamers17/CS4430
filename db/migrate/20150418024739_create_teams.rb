class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :year
      t.string :teamName
      t.string :leagueID
      t.string :teamID
      t.integer :rank
      t.string :playoff
      t.integer :games
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.integer :overTimeLosses
      t.integer :points
      t.integer :shootOutWins
      t.integer :shootOutLosses
      t.integer :goalsFor
      t.integer :goalsAgainst
      t.integer :pim
      t.integer :powerPlayGoals
      t.integer :powerPlayChances
      t.integer :shorthandedGoalsAgainst
      t.integer :powerPlayGoalsAgainst
      t.integer :penaltyKillChances
      t.integer :shorthandedGoalsFor

      t.timestamps null: false
    end
  end
end
