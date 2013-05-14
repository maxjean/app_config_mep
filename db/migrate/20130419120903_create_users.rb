class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|  
      t.integer "address_id"
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40
      t.string "company", :limit => 50
      t.integer "phone_number", :limit => 20
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end

  def self.down
  	drop_table :users
  end
end
