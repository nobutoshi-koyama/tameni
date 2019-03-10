class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.integer :admin_id
      t.string :menu
      t.text :detail

      t.timestamps
    end
  end
end
