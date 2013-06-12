class AddImageToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :image, :string
    add_column :paintings, :gallery_id, :integer
  end
end
