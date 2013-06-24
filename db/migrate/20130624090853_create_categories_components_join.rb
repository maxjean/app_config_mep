class CreateCategoriesComponentsJoin < ActiveRecord::Migration
  def self.up
  	create_table :categories_components, :id => false do |t|
  		t.integer "category_id"
  		t.integer "component_id"
    end
    add_index :categories_components, ["category_id", "component_id"]
  end
  
  def self.down
  	drop_table :categories_components
  end
  
end
