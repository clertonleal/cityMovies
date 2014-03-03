class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :movie_id
      t.string :video_url

      t.timestamps
    end
  end
end
