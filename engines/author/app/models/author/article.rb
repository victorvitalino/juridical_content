module Author
  class Article < ActiveRecord::Base
    belongs_to :article_category
    
    validates :title, :content, presence: true
  end
end
