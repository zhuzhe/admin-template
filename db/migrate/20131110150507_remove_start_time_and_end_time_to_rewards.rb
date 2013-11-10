class RemoveStartTimeAndEndTimeToRewards < ActiveRecord::Migration
  def change
    remove_column :rewards, :start_time
    remove_column :rewards, :end_time
  end
end
