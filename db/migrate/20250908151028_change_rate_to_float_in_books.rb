class ChangeRateToFloatInBooks < ActiveRecord::Migration[6.1]
  def change
    change_column :books, :rate, :float
  end
end
