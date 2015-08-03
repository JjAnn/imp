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
<<<<<<< HEAD
      t.references :user, index: true
=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289

      t.timestamps null: false
    end
  end
end
