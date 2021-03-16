class ChangeDatatypeUserContentOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :user_content ,:text
  end
end
