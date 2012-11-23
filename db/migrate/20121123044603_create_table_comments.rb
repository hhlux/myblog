class CreateTableComments < ActiveRecord::Migration
  def up
  	create_table :comments do |t|

  	  t.string :author
      t.string :content
      t.integer :article_id
      t.boolean :published
      t.datetime :published_at

      t.timestamps
    end

    add_column :articles, :published, :integer
    add_column :articles, :published_at, :datetime
  end

  def down
  end
end
