class AddGeoToReltask < ActiveRecord::Migration
  def change
    add_column :reltasks, :ip_address, :float
    add_column :reltasks, :getlocal, :string
    add_column :reltasks, :longtitude, :float
    add_column :reltasks, :latitude, :float
  end
end
