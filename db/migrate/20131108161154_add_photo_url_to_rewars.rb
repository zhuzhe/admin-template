class AddPhotoUrlToRewars < ActiveRecord::Migration
  def self.up
    add_attachment :rewards, :photo_url
  end

  def self.down
    remove_attachment :rewards, :photo_url
  end
end
