class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.boolean :has_evidence
      t.string :comment

      t.timestamps
    end
  end
end
