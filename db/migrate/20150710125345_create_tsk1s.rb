class CreateTsk1s < ActiveRecord::Migration
  def change
    create_table :tsk1s do |t|
      t.integer :raiz
      t.string :descr
      t.integer :hour
      t.string :typo
      t.belongs_to :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
