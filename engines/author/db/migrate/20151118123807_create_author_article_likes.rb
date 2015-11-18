class CreateAuthorArticleLikes < ActiveRecord::Migration
  def change
    create_table :author_article_likes do |t|
      t.references :user, index: true
      t.references :article, index: true
  
      t.timestamps null: false
    end
  end
end
