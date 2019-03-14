class CreateSyukkas < ActiveRecord::Migration[5.2]
  def change
    create_table :syukkas do |t|
      
      t.integer :user_id
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :menu
      t.integer :quantity
      t.text :detail
      t.text :farmer

      t.timestamps
    end
  end
end
