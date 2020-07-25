class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.resources :event
      t.boolean :has_evidence
      t.string :comment

      t.timestamps
    end
  end
end
