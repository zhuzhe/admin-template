class AddConsumeAmountToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :consume_amount, :integer, :default => 0
  end
end
