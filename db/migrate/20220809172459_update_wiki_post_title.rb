class UpdateWikiPostTitle < ActiveRecord::Migration[7.0]
  def change
    change_column :wiki_posts, :title, :string, :limit => 50
  end

  def down
    change_column :wiki_posts, :title, :string, :limit => 255
  end
end
