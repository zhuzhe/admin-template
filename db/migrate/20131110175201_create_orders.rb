class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :consumer_id
      t.integer :activity_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
