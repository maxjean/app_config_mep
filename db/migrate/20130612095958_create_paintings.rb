class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
  	drop_table :paintings
  end
end
