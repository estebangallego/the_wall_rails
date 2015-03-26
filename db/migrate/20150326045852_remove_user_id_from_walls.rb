class RemoveUserIdFromWalls < ActiveRecord::Migration
  def change
    remove_column :walls, :user_id, :integer
  end
end
