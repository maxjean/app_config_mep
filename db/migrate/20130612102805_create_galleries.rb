class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
  	drop_table :galleries
  end
end
