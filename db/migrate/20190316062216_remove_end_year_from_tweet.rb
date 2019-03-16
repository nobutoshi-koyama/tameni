class RemoveEndYearFromTweet < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :end_year, :integer
  end
end
