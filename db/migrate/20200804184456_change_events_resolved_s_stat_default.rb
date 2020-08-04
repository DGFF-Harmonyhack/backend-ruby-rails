class ChangeEventsResolvedSStatDefault < ActiveRecord::Migration[6.0]
  def up
    change_column :events, :resolved_stat, :boolean, default: false
  end
  
  def down
    change_column :events, :resolved_stat, :boolean, default: nil
  end
  end
