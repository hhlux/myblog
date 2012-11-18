class Account < ActiveRecord::Base
  attr_accessible :username, :password

  def self.authenticate(username, password)
    find(:first,
         :conditions => ["username = ? AND password = ?", login, password_hash(pass), 'active'])
  end
end
