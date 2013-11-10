class AddConsumeTypeIdAndConsumeAmountToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :consume_type_id, :integer
    add_column :activities, :consume_amount, :integer, :default => 0
  end
end
