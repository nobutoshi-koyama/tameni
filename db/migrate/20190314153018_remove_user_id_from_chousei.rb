class RemoveUserIdFromChousei < ActiveRecord::Migration[5.2]
  def change
    remove_column :chouseis, :user_id, :integer
  end
end
