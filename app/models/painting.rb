class Painting < ActiveRecord::Base
  attr_accessible :gallery_id, :description, :name, :image
  belongs_to :gallery
  mount_uploader :image, ImageUploader
end
