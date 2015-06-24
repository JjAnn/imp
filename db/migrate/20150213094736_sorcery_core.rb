class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :role
      t.string :name
      t.string :classe
      t.string :celular

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
