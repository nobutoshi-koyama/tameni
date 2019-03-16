class CreateDayoftweets < ActiveRecord::Migration[5.2]
  def change
    create_table :dayoftweets do |t|
      
      t.string :day

      t.timestamps
    end
  end
end
