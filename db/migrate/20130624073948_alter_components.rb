class AlterComponents < ActiveRecord::Migration
  def change
  	add_column("components","created_at", :datetime)
  	add_column("components","updated_at", :datetime)
  	add_column("components", "gallery_id", :integer)
  end

  def down
  	drop_table :components
  end
end
