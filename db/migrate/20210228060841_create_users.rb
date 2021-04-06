class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.string :name
      t.string :circle_id

      t.timestamps
    end
  end
end
