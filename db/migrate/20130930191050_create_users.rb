class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.integer :profil_id
      t.string :profil_type
      t.boolean :active
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :profil_id
  end
end
