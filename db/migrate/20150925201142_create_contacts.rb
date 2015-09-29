class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email
      t.string :website
      t.string :notes

      t.timestamps null: false
    end

    add_index :contacts, :name, unique: true
  end
end
