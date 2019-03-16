class AddWeightToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :weight, :string
  end
end
