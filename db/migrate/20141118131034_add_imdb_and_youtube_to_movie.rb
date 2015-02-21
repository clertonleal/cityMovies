class AddImdbAndYoutubeToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :imdbLink, :string
    add_column :movies, :youtubeLink, :string
  end
end
