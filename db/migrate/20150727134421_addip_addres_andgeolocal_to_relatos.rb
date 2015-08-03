class AddipAddresAndgeolocalToRelatos < ActiveRecord::Migration

  def change
    add_column :relatos, :ip_address, :string
    add_column :relatos, :getlocal, :string
  end
end
