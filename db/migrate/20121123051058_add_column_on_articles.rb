class AddColumnOnArticles < ActiveRecord::Migration
  def up
  	add_column :articles, :category_id, :integer
  end

  def down
  end
end
