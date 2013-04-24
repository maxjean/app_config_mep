class CreateOrders < ActiveRecord::Migration
  def up
  	create_table :orders do |t|
  		t.integer "user_id"
  		t.integer "component_id"
  		t.datetime "created_at"
    	t.datetime "updated_at"
    	t.timestamps
  end
  end

  def down
  	drop_table :orders
  end
end
