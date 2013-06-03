class OrdersController < ApplicationController

	def index
	end

	def new
		@order = Order.new
	end

	def create
  		@order = Order.new(params[:order])
  		if @order.save
  			session[:order_id] = @order.id
  			redirect_to order_steps_path
  		else
  			render :new
  		end
  	end
end
