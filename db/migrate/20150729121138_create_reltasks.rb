class CreateReltasks < ActiveRecord::Migration
  def change
    create_table :reltasks do |t|
      t.references :task, index: true, foreign_key: true
      t.references :relato, index: true, foreign_key: true
      t.time :tempo
      t.boolean :isdoe
      t.references :user, index: true, foreign_key: true
      t.references :projeto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
