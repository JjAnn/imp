class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.references :cliente, index: true
      t.string :logra
      t.string :cep
      t.string :uf
      t.string :city
      t.integer :km

      t.timestamps null: false
    end
  end
end
