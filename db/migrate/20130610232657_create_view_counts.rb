class CreateViewCounts < ActiveRecord::Migration
  def up
    create_table :view_counts do |t|
      t.integer :count
    end
  end

  def down
    drop_table :view_counts
  end
end
