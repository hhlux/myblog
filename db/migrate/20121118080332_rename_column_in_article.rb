class RenameColumnInArticle < ActiveRecord::Migration
  def up
  	rename_column :articles, :text, :body
  end

  def down
  end
end
