class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :goalies, :id
  end

  def down
    add_column :goalies, :id, :integer
  end

end
