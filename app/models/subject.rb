class Subject < ActiveRecord::Base
  attr_accessible :name, :visible, :position

  has_many :pages
end
