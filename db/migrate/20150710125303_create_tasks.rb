class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :raiz
      t.string :descr
      t.integer :hour
      t.string :typo
      t.references :projeto

      t.timestamps null: false
    end
  end
end
