class CreateConditionals < ActiveRecord::Migration
  def change
    create_table :conditionals do |t|
      t.boolean :transla
      t.boolean :interval
      t.integer :km
      t.date :data
      t.string :why
      t.string :time
      t.references :projeto, index: true

      t.timestamps null: false
    end
  end
end
