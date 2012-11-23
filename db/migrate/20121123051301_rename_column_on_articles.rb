class RenameColumnOnArticles < ActiveRecord::Migration
  def up
  	rename_column :articles, :body, :content
  end

  def down
  end
end
