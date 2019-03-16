class RemoveStartYearFromTweet < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :start_year, :integer
  end
end
