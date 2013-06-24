class Category < ActiveRecord::Base 
  attr_accessible :category_id, :description, :name
  has_and_belongs_to_many :components
end