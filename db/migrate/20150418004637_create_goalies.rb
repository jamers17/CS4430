class CreateGoalies < ActiveRecord::Migration
  def change
    create_table :goalies do |t|
      t.boolean :playoffs
      t.integer :year
      t.string :player
      t.integer :age
      t.integer :gp
      t.integer :w
      t.integer :l
      t.integer :ot
      t.integer :ga
      t.integer :sa
      t.integer :sv
      t.decimal :svp, precision: 8, scale: 3
      t.decimal :gaa, precision: 8, scale: 2
      t.integer :so
      t.integer :minutes
      t.integer :g
      t.integer :a
      t.integer :pts
      t.integer :pim
      t.string :firstname
      t.string :lastname

      t.timestamps null: false
    end
  end
end
