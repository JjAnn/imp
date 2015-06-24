class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :seq
      t.string :descr
      t.integer :seqpai
      t.string :typo
      t.integer :hour
      t.references :projeto, index: true

      t.timestamps null: false
    end
  end
end
