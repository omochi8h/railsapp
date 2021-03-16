class ChangeColumnsDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:users,:image_name,"default_user.jpg")

  end
end
