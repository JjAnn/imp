class AddThingsToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :descr, :string
    add_column :tasks, :raiz, :integer
    add_column :tasks, :tempo, :float
    add_column :tasks, :typo, :string
  end
end
