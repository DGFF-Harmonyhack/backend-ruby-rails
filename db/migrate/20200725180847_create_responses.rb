class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.belongs_to :event, null: false
      t.boolean :has_evidence
      t.string :comment
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
