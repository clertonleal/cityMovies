class ChangeImageUrlToFile < ActiveRecord::Migration

  def up
    remove_column :photos, :image_url
    add_attachment :photos, :image_url
  end

  def down
    remove_attachment :photos, :image_url
    add_column :photos, :image_url, :string
  end
end
