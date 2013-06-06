class Picture < ActiveRecord::Base

	attr_accessible :title, :description, :content_type, :binary_data
end