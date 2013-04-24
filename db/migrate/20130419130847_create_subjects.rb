class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string "name"
      t.integer "postion"
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def self.down
  	drop_table :subjects
  end 
end
