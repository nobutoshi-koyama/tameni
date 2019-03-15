class CreateSyukkas < ActiveRecord::Migration[5.2]
  def change
    create_table :syukkas do |t|
      
      t.integer :chousei_id
      t.integer :quantity
      t.string :menu
      t.text :detail
      t.text :farmer

      t.timestamps
    end
  end
end
