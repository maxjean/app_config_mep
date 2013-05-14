class CreateSlideshows < ActiveRecord::Migration
  def up
  	create_table :slideshows do |t|
  		t.string "name", :limit => 50
  		t.text "url"
  		t.text "picture"
  end
  end

  def down
  	drop_table :slideshows
  end
end
