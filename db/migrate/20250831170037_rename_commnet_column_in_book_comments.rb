class RenameCommnetColumnInBookComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :book_comments, :commnet, :comment
    rename_column :book_comments, :text, :body
  end
end
