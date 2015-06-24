class CreateRelatos < ActiveRecord::Migration
  def change
    create_table :relatos do |t|
      t.references :cliente, index: true
      t.references :projeto, index: true
      t.references :local, index: true
      t.references :task, index: true
      t.integer :time
      t.string :comment
      t.boolean :isdoe

      t.timestamps null: false
    end
  end
end
