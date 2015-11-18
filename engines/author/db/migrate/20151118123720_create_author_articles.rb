class CreateAuthorArticles < ActiveRecord::Migration
  def change
    create_table :author_articles do |t|
      
      t.string :title

      t.text   :resume
      t.text   :content
      
      t.references :user, index: true

      t.boolean :publish, default: false
      t.boolean :revised, default: false

      t.references :link_article, array: true
      t.references :article_category, index: true
      
      t.boolean    :only_subscribes, default: false
      t.boolean    :only_users, default: false

      t.timestamps null: false
    end
  end
end
