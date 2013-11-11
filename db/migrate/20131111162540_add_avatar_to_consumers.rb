class AddAvatarToConsumers < ActiveRecord::Migration

  def self.up
    add_attachment :consumers, :avatar
  end

  def self.down
    remove_attachment :consumers, :avatar
  end

end
