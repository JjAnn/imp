class AddUserToRelatos < ActiveRecord::Migration
  def change
    add_column :relatos, :user, :integer
  end
end
