class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :circle_name
      t.string :email
      t.string :person_name
      t.string :kind

      t.timestamps
    end
  end
end
