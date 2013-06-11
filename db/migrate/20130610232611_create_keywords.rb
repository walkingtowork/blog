class CreateKeywords < ActiveRecord::Migration
  def up
    create_table :keywords do |t|
      t.string :tag
    end
  end

  def down
    drop_table :keywords
  end
end
