class AlterEvents < ActiveRecord::Migration
  def up
  	add_column("events","country_id", :integer)
  end

  def down
  	remove_column("events","country_id")
  end
end
