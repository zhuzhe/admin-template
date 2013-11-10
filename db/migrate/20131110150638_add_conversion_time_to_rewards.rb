class AddConversionTimeToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :conversion_time, :string
  end
end
