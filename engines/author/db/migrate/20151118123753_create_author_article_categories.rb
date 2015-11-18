class CreateAuthorArticleCategories < ActiveRecord::Migration
  def change
    create_table :author_article_categories do |t|

      t.string :title
      t.string :description
      t.boolean :status, default: true
      t.boolean :only_user, default: false
      t.boolean :only_subscribes, default: false

      t.timestamps null: false
    end
  end
end
