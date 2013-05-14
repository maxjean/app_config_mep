class CreatePictures < ActiveRecord::Migration
  def up
  	create_table :pictures do |t|
  		t.integer "slideshow_id"
  		t.string "title", :limit => 50
  		t.text "description"
  end
  end

  def down
  	drop_table :pictures
  end
end
