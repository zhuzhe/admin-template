class AddLotteryCountToConsumer < ActiveRecord::Migration
  def change
    add_column :consumers, :lottery_count, :integer, :default => 0
  end
end
