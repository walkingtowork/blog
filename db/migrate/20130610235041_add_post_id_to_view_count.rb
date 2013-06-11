class AddPostIdToViewCount < ActiveRecord::Migration
  def change
    add_column :view_counts, :post_id, :integer
  end
end
