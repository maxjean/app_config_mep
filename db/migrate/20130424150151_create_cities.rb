class CreateCities < ActiveRecord::Migration
  def up
  	create_table :cities do |t|
  		t.integer "city_id"
  		t.integer "country_id"
  		t.string "name"
  		t.integer "zip_code"
  end
  end

  def down
  	drop_table :cities
  end
end
