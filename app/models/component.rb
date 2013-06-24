class Component < ActiveRecord::Base 
  attr_accessible :gallery_id, :description, :name, :image
  belongs_to :gallery
  has_and_belongs_to_many :categories
  mount_uploader :image, ImageUploader
end