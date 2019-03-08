class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :stage_title, :string
    add_column :users, :tel, :string
    add_column :users, :address, :string
  end
end
