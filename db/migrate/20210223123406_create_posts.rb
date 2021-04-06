class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.text :content

      t.timestamps
    end
  end
end
