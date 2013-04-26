class Subject < ActiveRecord::Base
  attr_accessible :name, :visible, :position

  has_one :page
end
