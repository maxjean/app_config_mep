class CreateCategories < ActiveRecord::Migration
  def up
  	create_table :categories do |t|
  		t.integer "category_id"
  		t.string "name", :limit => 50
  		t.text "description"
  		t.text "description"
  end
  end

  def down
  	drop_table :categories
  end
end
