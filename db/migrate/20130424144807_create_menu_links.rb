class CreateMenuLinks < ActiveRecord::Migration
  def up
  	create_table :menu_links do |t|
  		t.integer "menu_id"
  		t.string "title", :limit => 50
  		t.text "path"
  end
  end

  def down
  	drop_table :menu_links
  end
end
