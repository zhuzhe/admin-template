class AddConsumerIdToSessionTokens < ActiveRecord::Migration
  def change
    add_column :session_tokens, :consumer_id, :integer
  end
end
