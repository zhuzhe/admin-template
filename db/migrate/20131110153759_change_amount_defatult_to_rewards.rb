class ChangeAmountDefatultToRewards < ActiveRecord::Migration
  def change
    change_column_default :rewards, :amount, 0
  end
end
