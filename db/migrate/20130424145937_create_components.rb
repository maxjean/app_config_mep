class CreateComponents < ActiveRecord::Migration
  def up
  	create_table :components do |t|
  		t.integer "category_id"
  		t.string "name", :limit => 30
  		t.text "description"
  		t.text "picture"
  		t.float "price"
  end
  end

  def down
  	drop_table :components
  end
end
