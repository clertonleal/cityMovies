class RemoveColumnCoverFromTableMovie < ActiveRecord::Migration
  def up
    remove_column :movies, :cover
    add_attachment :movies, :cover
  end

  def down
    add_column :movies, :cover, :string
    remove_attachment :movies, :cover
  end
end
