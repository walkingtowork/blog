class CreateKeywordsPostsTable < ActiveRecord::Migration
  def up
    create_table :keywords_posts, :id => false do |t|
      t.integer :keyword_id
      t.integer :post_id
    end
  end

  def down
    drop_table :keywords_posts
  end
end
