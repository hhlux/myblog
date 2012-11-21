class User < ActiveRecord::Base
  attr_accessible :username, :password

  def self.authenticate(username, password)
    find(:first,
         :conditions => ["username = ? AND password = ?", username, password])
  end

  # Apply SHA1 encryption to the supplied password.
  # We will additionally surround the password with a salt
  # for additional security.
  def self.password_hash(pass)
    Digest::SHA1.hexdigest("#{salt}--#{pass}--")
  end

end
