class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.boolean :resolved_stat
      t.string :description
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
