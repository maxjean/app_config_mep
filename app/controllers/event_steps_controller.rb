class EventStepsController < ApplicationController
	include Wicked::Wizard
	steps :perso1, :perso2
#...

	def show
	 # @event = Event.new(params[:event_id])
	  #	@event = Event.find_by_id(session[:event_id])
	    render_wizard
  	end

	# def update
	#   @event = Event.find_by_id(session[:event_id])
	#   @event.attributes = params[:event]
	#   render_wizard @event
	# end
  	# def create
  	# 	@event = Event.new(params[:event])
  	# 	if @event.save
  	# 		session[:event_id] = @event.id
  	# 		redirect_to event_steps_path, notice: "Thank you"
  	# 	else
  	# 		render :new
  	# 	end
  	# end

  	# def test

  	# end
end
#@event = Event.find_by_id(session[:event_id])