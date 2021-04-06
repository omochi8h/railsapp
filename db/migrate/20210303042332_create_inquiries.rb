class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.string :circle_name
      t.string :email
      t.string :person_name
      t.string :kind

      t.timestamps
    end
  end
end
