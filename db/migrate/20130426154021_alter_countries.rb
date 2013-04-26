class AlterCountries < ActiveRecord::Migration
  def change
  	add_column("countries","name", :string, :limit => 50)
  end

  def down
  	remove_column("countries", "name")
  end
end
