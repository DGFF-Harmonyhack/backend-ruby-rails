class AddLatAndLongToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :events, :long, :decimal, {:precision=>10, :scale=>6}
  end
end
