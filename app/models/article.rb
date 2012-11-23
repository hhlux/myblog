class Article < ActiveRecord::Base
  attr_accessible :title, :content, :published, :published_at

  belongs_to :category

  has_many :comments

end
