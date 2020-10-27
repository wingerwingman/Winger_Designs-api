class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.text :name
      t.text :email
      t.text :phonenumber
      t.text :message

      t.timestamps
    end
  end
end
