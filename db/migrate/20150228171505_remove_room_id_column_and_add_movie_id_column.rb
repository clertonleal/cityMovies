class RemoveRoomIdColumnAndAddMovieIdColumn < ActiveRecord::Migration
  def change
    remove_column :hours, :room_id
    add_column :hours, :cinema_id, :integer
  end
end
