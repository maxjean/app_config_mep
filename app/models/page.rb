class Page < ActiveRecord::Base
  attr_accessible :name, :permalink, :visible, :position

  belongs_to :subject
end
