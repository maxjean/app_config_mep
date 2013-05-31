class EventsController < ApplicationController
	 
	 def index
	 end

	 def new
	 	@event = Event.new
	 end

	 def create
  		@event = Event.new(params[:event])
  		if @event.save
  			session[:event_id] = @event.id
  			redirect_to event_steps_path
  		else
  			render :new
  		end
  	end
end
