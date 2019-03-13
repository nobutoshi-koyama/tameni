class AddColumToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :text, :text
    add_column :comments, :memo_id, :integer
    add_column :comments, :user_id, :integer
  end
end
