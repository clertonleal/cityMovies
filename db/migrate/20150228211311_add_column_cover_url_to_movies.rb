class AddColumnCoverUrlToMovies < ActiveRecord::Migration
  def up
    add_column :movies, :cover_url, :string
    remove_attachment :movies, :cover
  end

  def down
    add_attachment :movies, :cover
    remove_column :movies, :cover_url
  end
end
