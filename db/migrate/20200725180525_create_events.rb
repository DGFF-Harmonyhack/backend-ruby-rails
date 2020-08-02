class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.boolean :resolved_stat
      t.string :description
      t.string :creater_uid

      t.timestamps
    end
  end
end
