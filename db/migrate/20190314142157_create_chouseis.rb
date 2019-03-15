class CreateChouseis < ActiveRecord::Migration[5.2]
  def change
    create_table :chouseis do |t|
      t.integer :user_id
      t.integer :syukka_id

      t.timestamps
    end
  end
end
