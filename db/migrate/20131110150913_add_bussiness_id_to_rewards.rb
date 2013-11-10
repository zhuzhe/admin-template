class AddBussinessIdToRewards < ActiveRecord::Migration
  def change
    add_column :rewards, :bussiness_id, :integer
  end
end
