class Article < ActiveRecord::Base

  attr_accessible :title, :content, :published, :published_at

  belongs_to :category

  has_many :comments

  #accepts_nested_attributes_for :category

  def comments_count
  	self.comments.count
  end

end
