class AddNestingToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :parent_id, :integer
    add_column :tasks, :lft, :iteger
    add_column :tasks, :rgt, :integer
  end
end
