class CreateEvents < ActiveRecord::Migration
  def up
  	create_table :events do |t|
  		t.string "email", :default => "", :null => false
  		t.integer "rent_quantity", :limit => 4
  		t.integer "rent_length", :limit => 2
  		t.string "rent_location", :limit => 25
  		t.boolean "wifi_setup", :default => true
  		t.text "requirements"
  		t.string "firstname", :limit => 25
  		t.string "lastname", :limit => 25
  		t.string "company_name", :limit => 50
  		t.integer "phone_number", :limit => 20
  		t.datetime "created_at"
      	t.datetime "updated_at"
      	t.timestamps
  end
end

  def down
  	drop_table :events
  end
end
