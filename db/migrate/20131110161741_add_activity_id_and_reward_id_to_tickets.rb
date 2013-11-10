class AddActivityIdAndRewardIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :activity_id, :integer
  end
end
