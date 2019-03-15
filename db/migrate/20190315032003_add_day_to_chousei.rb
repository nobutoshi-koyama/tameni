class AddDayToChousei < ActiveRecord::Migration[5.2]
  def change
    add_column :chouseis, :day, :string
  end
end
