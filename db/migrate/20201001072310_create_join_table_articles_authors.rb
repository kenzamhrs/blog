class CreateJoinTableArticlesAuthors < ActiveRecord::Migration[6.0]
  def change
    create_join_table :articles, :authors do |t|
      t.index :article_id
      t.index :author_id
    end
  end
end
