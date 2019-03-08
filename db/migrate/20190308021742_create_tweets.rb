class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      
      t.integer :start_year
      t.integer :end_year
      t.integer :start_month
      t.integer :end_month
      t.string :start_day
      t.string :end_day
      t.integer :quantity
      t.string :menu

      t.timestamps
    end
  end
end
