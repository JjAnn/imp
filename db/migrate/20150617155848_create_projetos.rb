class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.references :cliente
      t.string :name
      t.string :descr
      t.string :typo
      t.references :user
      t.date :dateini
      t.date :datefin
      t.integer :status

      t.timestamps null: false
    end
  end
end
