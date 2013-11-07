class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :content
      t.date :start_time
      t.date :end_time
      t.integer :author
      t.boolean :published

      t.timestamps
    end
  end
end
