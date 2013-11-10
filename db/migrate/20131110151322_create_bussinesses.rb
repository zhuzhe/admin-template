class CreateBussinesses < ActiveRecord::Migration
  def change
    create_table :bussinesses do |t|
      t.string :name
      t.date :join_time

      t.timestamps
    end
  end
end
