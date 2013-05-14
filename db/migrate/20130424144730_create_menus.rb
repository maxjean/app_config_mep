class CreateMenus < ActiveRecord::Migration
  def up
  	create_table :menus do |t|
  		t.string "name", :limit => 25
  		t.string "description", :limit => 50
      	t.timestamps
  end
  end

  def down
  	drop_table :menus
  end
end
