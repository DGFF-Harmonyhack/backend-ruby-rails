class RenameCommentToDetails < ActiveRecord::Migration[6.0]
  def change
    rename_column :responses, :comment, :details
    rename_column :responses, :has_evidence, :type

    change_column :responses, :type, :string
  end
end
