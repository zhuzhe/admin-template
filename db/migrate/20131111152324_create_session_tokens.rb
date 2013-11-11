class CreateSessionTokens < ActiveRecord::Migration
  def change
    create_table :session_tokens do |t|
      t.string :token
      t.string :cache

      t.timestamps
    end
  end
end
