class OrderStepsController < ApplicationController

	include Wicked::Wizard
	steps :order1, :order2
#...

	def show
	 # @event = Event.new(params[:event_id])
	  	@order = Order.find_by_id(session[:order_id])
	    render_wizard
  	end

  def update
    @order = Order.find_by_id(session[:order_id])
    @order.attributes = params[:order]
    render_wizard @order
  end

  private
  def redirect_to_finish_wizard
    redirect_to redirect_to order_steps_path, notice: "Thanks for signing up."
  end

end
