class AddYearToDayoftweet < ActiveRecord::Migration[5.2]
  def change
    add_column :dayoftweets, :year, :integer
  end
end
