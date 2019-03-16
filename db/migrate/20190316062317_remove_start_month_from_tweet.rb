class RemoveStartMonthFromTweet < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :start_month, :integer
  end
end
