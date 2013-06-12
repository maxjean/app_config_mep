class OrdersController < ApplicationController

	def new
		@order = Order.new
	end

	def show
		@image_data = Picture.all
  		# @image = @image_data.binary_data
  		# send_data (@image, :type     => @image_data.content_type, 
    #                  :title => @image_data.title,
    #                  :path => @image_data.path,
    #                  :description => @image_data.description, 
    #                  :disposition => 'inline')
	end

end
