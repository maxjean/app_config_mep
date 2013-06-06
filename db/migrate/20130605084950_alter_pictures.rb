class AlterPictures < ActiveRecord::Migration
  def self.up
  	add_column("pictures", "content_type", :string)
  	add_column("pictures", "binary_data", :binary)
  	add_column("pictures", "path", :string, :limit => 255)
  end

  def self.down
  	remove_column("pictures", "content_type")
  	remove_column("pictures", "binary_data")
  	remove_column("pictures", "path", :string, :limit => 255)
  end
end
