class Comment < ActiveRecord::Base
  attr_accessible :author, :content, :email, :website, :article_id

  belongs_to :article

end
