class RenameAgain < ActiveRecord::Migration[6.0]
  def change
    rename_column :responses, :type, :response_type
  end
end
