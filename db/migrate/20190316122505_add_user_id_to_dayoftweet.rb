class AddUserIdToDayoftweet < ActiveRecord::Migration[5.2]
  def change
    add_column :dayoftweets, :user_id, :integer
  end
end
