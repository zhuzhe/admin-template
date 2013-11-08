class AddActivityIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :activity_id, :integer
  end
end
