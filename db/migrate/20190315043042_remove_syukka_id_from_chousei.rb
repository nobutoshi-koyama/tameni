class RemoveSyukkaIdFromChousei < ActiveRecord::Migration[5.2]
  def change
    remove_column :chouseis, :syukka_id, :integer
  end
end
