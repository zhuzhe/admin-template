class AddBusinessIdAndRateAndAddressAndStartTimeAndEndTimeToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :rate, :float, :default => 0
    add_column :rewards, :address, :string
    add_column :rewards, :start_time, :date
    add_column :rewards, :end_time, :date
    add_column :rewards, :business_id, :integer
  end
end
