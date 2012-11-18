class ModifyColumnInArticle < ActiveRecord::Migration
  def up
  	change_column :articles, :text, :text
  end

  def down
  end
end
