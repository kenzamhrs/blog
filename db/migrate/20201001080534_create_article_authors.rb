class CreateArticleAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :article_authors do |t|

      t.timestamps
    end
  end
end
