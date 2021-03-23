class AddTagsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :tag, :text
  end
end
