class Addtypetoaddress < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    add_column :addresses, :address_type_id, :integer
  end
  
end
