class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :login,            :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false
      t.string :name
      t.string :last_name
      t.string :father_name
      t.date :date_birth

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :login, unique: true
  end
end