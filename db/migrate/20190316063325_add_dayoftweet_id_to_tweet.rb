class AddDayoftweetIdToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :dayoftweet_id, :integer
  end
end
