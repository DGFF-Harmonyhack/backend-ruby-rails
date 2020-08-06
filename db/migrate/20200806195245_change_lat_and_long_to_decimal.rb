class ChangeLatAndLongToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :lat, :decimal 
    change_column :events, :long, :decimal
  end
end
