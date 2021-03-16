class AddUserContentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_content, :string
  end
end
