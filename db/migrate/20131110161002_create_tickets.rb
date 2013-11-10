class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :uid
      t.integer :consumer_id
      t.integer :reward_id
      t.date :used_time
      t.boolean :is_used

      t.timestamps
    end
  end
end
