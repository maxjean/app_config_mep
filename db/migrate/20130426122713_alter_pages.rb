class AlterPages < ActiveRecord::Migration
  def change
  	add_column("pages", "position", "integer")
  end

  def down
  	remove_colum("pages", "position")
  end
end
