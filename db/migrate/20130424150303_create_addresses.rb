class CreateAddresses < ActiveRecord::Migration
  def up
  	create_table :addresses do |t|
  		t.integer "adress_id"
  		t.integer "city_id"
  		t.string "address 1"
  		t.string "address 2"
  end
  end

  def down
  	drop_table :addresses
  end
end
