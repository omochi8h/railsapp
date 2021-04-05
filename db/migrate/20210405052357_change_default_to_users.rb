class ChangeDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :user_content, from: nil, to: "サークル紹介文が設定されていません"

  end
end
