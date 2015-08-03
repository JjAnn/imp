class AddLatitudeAndLongitudeToRelatos < ActiveRecord::Migration
  def change
    add_column :relatos, :latitude, :float
    add_column :relatos, :longtitude, :float
  end
end
