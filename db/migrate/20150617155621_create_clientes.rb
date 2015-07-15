class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :telefone
      t.string :celular
      t.string :email

      t.timestamps null: false
    end
  end
end
