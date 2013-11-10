class AddConsumeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :consume_type, :integer, :default => 0
  end
end
