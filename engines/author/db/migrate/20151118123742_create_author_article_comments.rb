class CreateAuthorArticleComments < ActiveRecord::Migration
  def change
    create_table :author_article_comments do |t|

      t.references :article, index: true
      t.references :user, index: true
      t.text       :content
      t.integer    :like, default: 0
      t.integer    :unlike, default: 0

      t.timestamps null: false
    end
  end
end
