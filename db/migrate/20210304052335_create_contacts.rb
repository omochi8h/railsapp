class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
