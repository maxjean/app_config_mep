class CreateCountries < ActiveRecord::Migration
  def up
  	create_table :countries do |t|
  		t.integer "country_id"
  		t.string "name" => 50
  end
  end

  def down
  	drop_table :countries
  end
end
