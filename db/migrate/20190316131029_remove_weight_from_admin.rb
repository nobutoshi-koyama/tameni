class RemoveWeightFromAdmin < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :weight, :integer
  end
end
