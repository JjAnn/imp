class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :projeto
      t.references :user
      t.references :tasks
     

      t.timestamps null: false
    end
  end
end
