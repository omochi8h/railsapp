class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    add_column :posts, :image_name, :string
  end
end
