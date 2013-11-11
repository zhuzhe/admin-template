class AddPasswordToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :password, :string
  end
end
