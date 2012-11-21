class AddTableUser < ActiveRecord::Migration
  def up
  	create_table :users do |t|

      t.string :username, :null => false
      t.string :password, :null => false

      t.timestamps
    end
  end

  def down
  end
end
