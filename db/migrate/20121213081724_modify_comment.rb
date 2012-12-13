class ModifyComment < ActiveRecord::Migration
  def up
  	add_column :comments, :email, :string
    add_column :comments, :website, :string

    remove_column :comments, :published
    remove_column :comments, :published_at
  end

  def down
  end
end
