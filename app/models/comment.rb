class Comment < ActiveRecord::Base
  attr_accessible :author, :content, :published, :published_at

  belongs_to :article
end
