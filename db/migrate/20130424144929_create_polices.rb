class CreatePolices < ActiveRecord::Migration
  def up
  	create_table :polices do |t|
  		t.string "name", :limit => 25
  end
  end

  def down
  	drop_table :polices
  end
end
